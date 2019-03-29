<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\OurCategories */
/* @var $form yii\widgets\ActiveForm */
if ($model->id == 1) {
    $label = 'Image (File Size : 726x425)';
} elseif ($model->id == 2) {
    $label = 'Image (File Size : 750x425)';
} elseif ($model->id == 3) {
    $label = '';
} elseif ($model->id == 4) {
    $label = 'Image (File Size : 726x263)';
}
?>

<div class="our-categories-form form-inline">

    <?php $form = ActiveForm::begin(); ?>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'category')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'link')->textInput(['maxlength' => true]) ?>

    </div>
    <?php
    if ($model->id != 3) {
        ?>
        <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
            <?= $form->field($model, 'image')->fileInput()->label($label) ?>
            <?php if (isset($model->image)) { ?>
                <img src="<?= Yii::$app->homeUrl ?>../uploads/cms/our-categories/<?= $model->id ?>/small.<?= $model->image; ?>?<?= rand() ?>" class="img-responsive"/>

                <?php
            } elseif (!empty($model->image)) {
                echo "";
            }
            ?>

        </div>
        <?php
    }
    ?>
    <div class='col-md-12 col-sm-12 col-xs-12'>
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => 'btn btn-success', 'style' => 'float:right;']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>
