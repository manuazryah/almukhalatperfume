<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
//use yii\widgets\ActiveForm;
//use yii\grid\GridView;
use yii\widgets\ListView;
use yii\helpers\ArrayHelper;
use common\models\Category;
use common\models\SubCategory;
use yii\helpers\Url;
use yii\widgets\Pjax;
use common\components\SidemenuWidget;

if (isset($meta_title) && $meta_title != '') {
    $this->title = $meta_title;
} else {
    $this->title = 'Products';
}
$this->params['breadcrumbs'][] = $this->title;
?>
<?php
$current_action = Yii::$app->controller->action->id; // controller action id
$gender_params = \yii::$app->getRequest()->getQueryParams();
if (!empty($gender_params['category'])) {
    $target = $gender_params['category'];
} else {
    $target = '';
}
?>
<style>
    .summary{
        display: none;
    }
</style>
<div id="product-page" class="inner-page">
    <section class="breadcrumb">
        <div class="container">
            <ul>
                <li><?= Html::a('Home', ['/site/index']) ?></li>
                <li class="current"><a href="">Men</a></li>
            </ul>
        </div>
    </section>

    <section class="product-list">
        <div class="container">
            <div class="row">
                <?php
                $size_list = common\models\Product::find()->select('size')->where(['status' => 1])->groupBy(['size'])->all();
                $brand_list = common\models\Brand::find()->where(['status' => 1])->groupBy(['brand'])->all();
                $category_model = Category::find()->where(['status' => 1, 'category_code' => $category])->one();

                if (!empty($category_model)) {
                    $products = \common\models\Product::find()->select('brand')->where(['category' => $category_model->id])->all();
                    $size_list = \common\models\Product::find()->select('size')->where(['category' => $category_model->id])->groupBy(['size'])->all();
                    if ($products) {
                        foreach ($products as $product) {
                            $product_[] = $product->brand;
                        }
                        $brand_list = common\models\Brand::find()->where(['status' => 1])->andWhere(['IN', 'id', $product_])->groupBy(['brand'])->all();
                    }
                }
                ?>
                <?= SidemenuWidget::widget(['brand_list' => $brand_list, 'size_list' => $size_list, 'target' => $target, 'minrange' => $minrange, 'maxrange' => $maxrange]) ?>
                <div class="col-lg-9">
                    <?php Pjax::begin(['id' => 'product_view']) ?>
                    <div id="product_view">
                        <?=
                        $dataProvider->totalcount > 0 ? ListView::widget([
                                    'dataProvider' => $dataProvider,
                                    'itemView' => '_view2',
                                    'options' => [
                                        'tag' => 'div',
                                        'class' => 'row'
                                    ],
                                    'itemOptions' => [
                                        'tag' => 'div',
                                        'class' => 'col-lg-4 col-md-4 col-6 mob-full'
                                    ],
                                    'pager' => [
                                        'options' => ['class' => 'pagination'],
                                        'prevPageLabel' => '<', // Set the label for the "previous" page button
                                        'nextPageLabel' => '>', // Set the label for the "next" page button
                                        'firstPageLabel' => 'First', // Set the label for the "first" page button
                                        'lastPageLabel' => 'Last', // Set the label for the "last" page button
                                        'nextPageCssClass' => '>', // Set CSS class for the "next" page button
                                        'prevPageCssClass' => '<', // Set CSS class for the "previous" page button
                                        'firstPageCssClass' => '<<', // Set CSS class for the "first" page button
                                        'lastPageCssClass' => '>>', // Set CSS class for the "last" page button
                                        'maxButtonCount' => 5, // Set maximum number of page buttons that can be displayed
                                    ],
                                ]) : $this->render('no_product');
                        ?>
                    </div>
                    <?php Pjax::end() ?>
                </div>
            </div>
        </div>
    </section>
</div>

