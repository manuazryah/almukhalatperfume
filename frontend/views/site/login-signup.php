<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\widgets\ActiveForm;

if (isset($meta_title) && $meta_title != '') {
    $this->title = $meta_title;
} else {
    $this->title = 'AL Mukhalat Perfume';
}
?>

<div id="login-page" class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mauto">
                <div class="logon-box">
                    <div class="box-head">
                        <ul>
                            <li><?= Html::a('Login', ['/site/login-signup']) ?><a href="#!"></a></li>
                            <li><?= Html::a('Sign up', ['/site/signup']) ?></li>
                        </ul>
                    </div>
                    <?= \common\components\AlertMessageWidget::widget() ?>
                    <?php $form = ActiveForm::begin(['options' => ['method' => 'post', 'class' => 'login-form']]) ?>
                    <div class="row">
                        <div class="col-md-12">
                            <?= $form->field($model_login, 'email')->textInput(['class' => 'form-control'], ['autofocus' => true]) ?>
                        </div>
                        <div class="col-md-12">
                            <?= $form->field($model_login, 'password')->passwordInput(['class' => 'form-control']) ?>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group checkbox">
                                <input type="checkbox" class="form-control" id="Remember" name="Remember" name="LoginForm[rememberMe]">
                                <label for="Remember">Remember Me</label>
                            </div>
                        </div>
                    </div>
                    <?= Html::submitButton('Login', ['class' => 'btn orng-btn']) ?>
                    <?= Html::a('Forgot password?', ['/forgot-password'], ['class' => 'forgot']) ?>
                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </div>
</div>