<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\ckeditor\CKEditor;

/* @var $this yii\web\View */
/* @var $model common\models\About */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="about-form form-inline">

    <?php $form = ActiveForm::begin(); ?>

    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    </div>
    <div class='col-md-12 col-sm-12 col-xs-12 left_padd'>    
        <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    </div>
    <div class='col-md-12 col-sm-12 col-xs-12 left_padd'>   
        <?=
        $form->field($model, 'detailed_description', ['options' => ['class' => 'form-group']])->widget(CKEditor::className(), [
            'options' => ['rows' => 2],
            'preset' => 'custom', 'clientOptions' => ['height' => 'auto']
        ])
        ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'vision')->textarea(['rows' => 5]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'mission')->textarea(['rows' => 5]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'>    
        <?= $form->field($model, 'quotation')->textarea(['rows' => 6]) ?>

    </div>
    <div class='col-md-6 col-sm-6 col-xs-12 left_padd'> 
        <?= $form->field($model, 'about_image')->fileInput()->label('Image (File Size : 410x320)') ?>
        <?php if (isset($model->about_image)) { ?>
            <img src="<?= Yii::$app->homeUrl ?>../uploads/cms/about/<?= $model->id ?>/small.<?= $model->about_image; ?>?<?= rand() ?>" class="img-responsive"/>

            <?php
        } elseif (!empty($model->about_image)) {
            echo "";
        }
        ?>

    </div>
    <div class='col-md-12 col-sm-12 col-xs-12'>
        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => 'btn btn-success', 'style' => 'float:right;']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>
