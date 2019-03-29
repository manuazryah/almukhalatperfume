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
        <p>Type your new password here:</p>
    </div>
</div>

<?= Alert::widget() ?>
<div class="form-group">
    <div class="form-group has-feedback field-adminusers-user_name has-success">
        <label class="control-label" for="adminusers-user_name">New Password</label>
        <input type="password" id="new-password" class="form-control" name="new-password" aria-invalid="false">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        <p class="help-block help-block-error"></p>
    </div>
</div>
<div class="form-group">
    <div class="form-group has-feedback field-adminusers-user_name has-success">
        <label class="control-label" for="adminusers-user_name">Confirm Password</label>
        <input type="password" id="confirm-password" class="form-control" name="confirm-password" aria-invalid="false">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        <p class="help-block help-block-error"></p>
    </div>
</div>

<div class="form-group">
    <?= Html::submitButton('Submit', ['class' => 'btn btn-dark  btn-block text-left']) ?>
</div>
<div class="login-footer">
    <a href="<?= Yii::$app->homeUrl; ?>site/index" class="to_register">Login to your account?</a>

</div>

<?php ActiveForm::end(); ?>
