<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\CommonContents */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="common-contents-form form-inline">

    <?php $form = ActiveForm::begin(); ?>

    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'top_left_title')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'delivery_information')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-12 col-sm-12 col-xs-12 left_padd'>    
        <?php if (isset($model->offer_image)) { ?>
            <img src="<?= Yii::$app->homeUrl ?>../uploads/cms/home-content/offer/<?= $model->id ?>/large.<?= $model->offer_image; ?>?<?= rand() ?>" class="img-responsive"/>

            <?php
        } elseif (!empty($model->offer_image)) {
            echo "";
        }
        ?>
        <?= $form->field($model, 'offer_image')->fileInput()->label('Image (File Size : 1350x426)') ?>
    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'title1')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'content1')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'title2')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'content2')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'title3')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>   
        <?= $form->field($model, 'content3')->textInput(['maxlength' => true]) ?>

    </div><div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'phone_no')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'facebook_link')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'twitter_link')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'linkedin_link')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'instagram_link')->textInput(['maxlength' => true]) ?>

    </div>

    <div class='col-md-12 col-sm-12 col-xs-12'>
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => 'btn btn-success', 'style' => 'float:right;']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>
