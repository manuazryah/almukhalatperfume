<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\CommonContentsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="common-contents-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'top_left_title') ?>

    <?= $form->field($model, 'delivery_information') ?>

    <?= $form->field($model, 'offer_image') ?>

    <?= $form->field($model, 'offer_link') ?>

    <?php // echo $form->field($model, 'title1') ?>

    <?php // echo $form->field($model, 'content1') ?>

    <?php // echo $form->field($model, 'title2') ?>

    <?php // echo $form->field($model, 'content2') ?>

    <?php // echo $form->field($model, 'title3') ?>

    <?php // echo $form->field($model, 'content3') ?>

    <?php // echo $form->field($model, 'phone_no') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'CB') ?>

    <?php // echo $form->field($model, 'UB') ?>

    <?php // echo $form->field($model, 'DOC') ?>

    <?php // echo $form->field($model, 'DOU') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
