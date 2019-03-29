<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\models\CountryCode;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;

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
                    <?php
                    $form = ActiveForm::begin(['id' => 'sign_up_form', 'options' => [
                                    'class' => 'signup-form'
                    ]]);
                    ?>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="first-name">First Name<span class="astric">*</span></label>
                                <?= $form->field($model, 'first_name')->textInput(['placeholder' => ''])->label(FALSE) ?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="last-name">Last Name</label>
                                <?= $form->field($model, 'last_name')->textInput(['placeholder' => ''])->label(FALSE) ?>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="email">Email<span class="astric">*</span></label>
                                <?= $form->field($model, 'email')->textInput(['placeholder' => ''])->label(FALSE) ?>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mobile<span class="astric">*</span></label>
                                <div class="row">
                                    <?php $countrie_code = ArrayHelper::map(CountryCode::findAll(['status' => 1]), 'id', 'country_code'); ?>
                                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-3 col-3 prit0">
                                        <select id="cntry_code_id" name="SignupForm[country_code]" class="country-code">
                                            <?php
                                            foreach ($countrie_code as $key => $countrie_cod) {
                                                ?>
                                                <option value="<?= $key ?>"><?= $countrie_cod ?></option>
                                            <?php }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col-xl-10 col-lg-9 col-md-9 col-sm-9 col-9 plft0">
                                        <div class="form-group field-signupform-mobile_no required">
                                            <?= $form->field($model, 'mobile_no')->textInput()->label(FALSE) ?>
                                        </div>                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group radio-btn">
                                <ul>
                                    <li>
                                        <input type="radio" class="form-control" checked="" id="male" name="SignupForm[gender]" required="">
                                        <label for="male">male</label>
                                    </li>
                                    <li>
                                        <input type="radio" class="form-control" id="female" name="SignupForm[gender]" required="">
                                        <label for="female">female</label>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="DOB">Date of Birth<span class="astric">*</span></label>
                                <?php
                                $model->dob = date('d-M-Y');
                                ?>
                                <?=
                                $form->field($model, 'dob')->widget(DatePicker::classname(), [
                                    'type' => DatePicker::TYPE_INPUT,
                                    'pluginOptions' => [
                                        'autoclose' => true,
                                        'format' => 'dd-M-yyyy',
                                    ]
                                ])->label(FALSE);
                                ?>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="new-password">Password<span class="astric">*</span></label>
                                <?= $form->field($model, 'password')->passwordInput()->label(FALSE) ?>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="confirm-password">Confirm Password<span class="astric">*</span></label>
                                <?= $form->field($model, 'password_repeat')->passwordInput(['placeholder' => ''])->label(FALSE) ?>
                            </div>
                        </div>
                    </div>
                    <?= Html::submitButton('Sign up', ['class' => 'btn orng-btn']) ?>
                    <div class="box-foot">
                        <div class="terms">By clicking the 'Sign Up' button, you confirm that you accept our <a href="#!">Terms of use and Privacy Policy.</a></div>
                        <div class="hvac">Have an account? <?= Html::a('Log In', ['/site/login-signup']) ?></div>
                    </div>
                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </div>
</div>