<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\components\CartSummaryWidget;
use common\models\Emirates;
use yii\helpers\ArrayHelper;
use common\models\UserAddress;

$this->title = 'Checkout';
?>
<div id="checkout-page" class="inner-page">
    <section class="content">
        <div class="container">
            <div class="billing-addresserror" >
                <?= common\widgets\Alert::widget() ?>
            </div>
            <?php
            $form = ActiveForm::begin([
                        'id' => 'address-form',
                        'fieldConfig' => [
                            'options' => [
                                'class' => 'in-main-form',
                            ],
                        ],
            ]);
            ?>
            <div class="row">
                <div class="col-lg-7 left-sec order1">
                    <div class="sec-title">SHIPPING ADDRESS</div>

                    <form id="" class="address-form" action="" method="post">
                        <a href="" id="add-new-address" class="add-address"><i class="fa-add"></i>Add A New Address</a>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Choose your address</label>
                                    <select class="form-control" autocomplete="shipping country" data-backup="address" name="UserAddress[billing]" id="billing">
                                        <option value=''>--Select--</option>
                                        <?php
                                        foreach ($addresses as $address) {
                                            $selected = '';
                                            if ($address->id == $default_address->id) {
                                                $selected = 'selected';
                                            }
                                            ?>
                                            <option value="<?= $address->id ?>" <?= $selected ?>><?= $address->name . ', ' . $address->address . ', ' . $address->landmark . ', ' . $address->location ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                                <?php
                                $address = UserAddress::find()->where(['user_id' => Yii::$app->user->identity->id, 'status' => 1])->one();
                                if (isset($default_address) && $default_address != '') {
                                    $model->name = $default_address->name;
                                    $model->address = $default_address->address;
                                    $model->landmark = $default_address->landmark;
                                    $model->location = $default_address->location;
                                    $model->emirate = $default_address->emirate;
                                    $model->mobile_number = $default_address->mobile_number;
                                    $model->country_code = $default_address->country_code;
                                    $model->post_code = $default_address->post_code;
                                }
                                ?>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <?= $form->field($model, 'address')->textInput(['maxlength' => true])->label('Building Name/Number') ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <?= $form->field($model, 'landmark')->textInput(['maxlength' => true])->label('Landmark') ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <?= $form->field($model, 'location')->textInput(['maxlength' => true])->label('Location') ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Emirate</label>
                                    <?= $form->field($model, 'emirate')->dropDownList(ArrayHelper::map(Emirates::find()->all(), 'id', 'name'), ['prompt' => 'select'])->label(FALSE) ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group mobile_num">
                                    <label>Mobile Number</label>
                                    <div class="row">
                                        <?php $countrie_codes = ArrayHelper::map(common\models\CountryCode::findAll(['status' => 1]), 'id', 'country_code'); ?>
                                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3 pad-right-0">
                                            <select id="useraddress-country_code" name="UserAddress[country_code]" class="form-control">
                                                <?php foreach ($country_codes as $country_code) { ?>
                                                    <option value="<?= $country_code ?>" ><?= $country_code ?></option>
                                                <?php }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-9 pl0 pad-lft-0">
                                            <?= $form->field($model, 'mobile_number')->textInput()->label(FALSE) ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <?= $form->field($model, 'post_code')->textInput(['maxlength' => true])->label('Post Code') ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>User comment</label>
                                    <textarea cols="" rows="" class="form-control" name="user_comment"></textarea>
                                </div>
                            </div>
                        </div>
                        <!--</form>-->
                    </form>
                </div>

                <div class="col-lg-5 right-sec order0">
                    <?= CartSummaryWidget::widget(); ?>
                    <?= Html::submitButton('Confirm Order', ['class' => 'confirm-order']) ?>
                </div>

            </div>
            <?php ActiveForm::end(); ?>
        </div>
    </section>


</div>
<script>
    $(document).ready(function () {
        $(document).on('change', '#billing', function (e) {
            e.preventDefault();
            var id = $(this).val();
            if (id === '') {
                $('.billing').prop('disabled', false);
                $('#useraddress-emirate').prop('disabled', false);
                $('#useraddress-country_code').prop('disabled', false);
            } else {
                $('.billing').prop('disabled', true);
                $('#useraddress-emirate').prop('disabled', true);
                $('#useraddress-country_code').prop('disabled', true);
            }
            changeaddress('useraddress', id);
        });
        $(document).on('click', '#add-new-address', function (e) {
            e.preventDefault();
            $('#address-form').find('input:text, input:password, select, textarea').val('');
        });

    });


    function changeaddress(formclass, id) {
        $.ajax({
            type: "POST",
            cache: 'false',
            async: false,
            url: homeUrl + 'checkout/getadress',
            data: {id: id}
        }).done(function (data) {
            var $data = JSON.parse(data);
            if ($data.rslt === "success") {
                $('#' + formclass + '-name').val($data.name);
                $('#' + formclass + '-address').val($data.address);
                $('#' + formclass + '-landmark').val($data.landmark);
                $('#' + formclass + '-location').val($data.location);
                $('#' + formclass + '-emirate').val($data.emirate);
                $('#' + formclass + '-post_code').val($data.post_code);
                $('#' + formclass + '-mobile_number').val($data.mobile_number);
                $('#' + formclass + '-street_number').val($data.street);

            } else {
                $('#' + formclass + '-name').val('');
                $('#' + formclass + '-address').val('');
                $('#' + formclass + '-landmark').val('');
                $('#' + formclass + '-location').val('');
                $('#' + formclass + '-emirate').val('');
                $('#' + formclass + '-post_code').val('');
                $('#' + formclass + '-mobile_number').val('');
                $('#' + formclass + '-street_number').val('');
            }
        });
    }
</script>