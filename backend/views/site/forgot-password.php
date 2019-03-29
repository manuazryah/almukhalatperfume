<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use common\widgets\Alert;
?>

<?php
$form = ActiveForm::begin(
                [
                    'method' => 'post',
                    'options' => [
                        'class' => 'login-form fade-in-effect'
                    ]
                ]
);
?>
<div class="login-header">
    <a href="#" class="logo">
        <img src="<?= yii::$app->homeUrl; ?>images/logo.png" alt="logo" width="250" />
    </a>
    <div class="forgot-header">
        <h4>Forgot Your Password ?</h4>
        <hr/>
        <h5>Let us help you</h5>
        <p>Type your username / email ID in the field below to receive your validation code by email:</p>
    </div>
</div>

<?= Alert::widget() ?>
<div class="form-group">
    <?php
    $fieldOptions2 = [
        'options' => ['class' => 'form-group has-feedback'],
        'inputTemplate' => "{input}<span class='glyphicon glyphicon-user form-control-feedback'></span>"
    ];
    ?>
    <?= $form->field($model, 'user_name', $fieldOptions2)->label('User Name')->textInput() ?>
</div>

<div class="form-group">
    <?= Html::submitButton('Submit', ['class' => 'btn btn-dark  btn-block text-left']) ?>
</div>
<div class="login-footer">
    <a href="<?= Yii::$app->homeUrl; ?>site/index" class="to_register">Login to your account?</a>

</div>

<?php ActiveForm::end(); ?>
