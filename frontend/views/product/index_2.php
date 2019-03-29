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
if (preg_match('/android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i', $useragent) || preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i', substr($useragent, 0, 4))) {
    $user_type = 1;
} else {
    $user_type = 0;
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
                <?= SidemenuWidget::widget(['brand_list' => $brand_list, 'model_filter' => $model_filter, 'size_list' => $size_list, 'type' => $type, 'category' => $category]) ?>
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
<script>
    $(document).ready(function () {
        $('.desk-check').change(function () {
            $("#filter-search").submit();
        });
        var min_val = '<?php echo $min_value; ?>';
        var max_val = '<?php echo $max_value; ?>';
        var user_type = '<?php echo $user_type; ?>';

        $('#slider-container').slider({
            range: true,
            min: 0,
            max: 1000,
            values: [min_val, max_val],
            create: function () {
                $('#min').val(min_val);
                $('#max').val(max_val);
            },
            slide: function (event, ui) {
                $('#min').val(ui.values[0]);
                $('#max').val(ui.values[1]);

            },
            change: function (event, ui) {
                if (user_type == 0) {
                    $("#filter-search").submit();
                }
            }
        });
    });
    function brandsFunction() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("brandsInput");
        filter = input.value.toUpperCase();
        ul = document.getElementById("brandsUL");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("a")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
</script>
