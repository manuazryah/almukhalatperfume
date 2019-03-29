<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\components\CartSummaryWidget;
use common\models\Emirates;
use yii\helpers\ArrayHelper;
use common\models\UserAddress;

$this->title = 'Checkout';
?>
<section class="in-check-out-section"><!--in-orders-section-->
        <div class="container">
                <div id="blockContainer">
                        <!--<div class="row">-->
                        <div class="billing-addresserror" >
                                <?= common\widgets\Alert::widget() ?>
                        </div>
                        <div class="col-md-7 order-one">

                                <div class="check-out-box-left">
                                        <!--<form class="in-main-form">-->

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
                                        <h2 class="head">Shipping address</h2>
                                        <div class="form-group">
                                              <label class="choose-ur-address">Choose your address</label>
                                                <div class="new-adders"><a id="add-new-address"><i class="fa fa-plus-circle" ></i> Add A New Address</a></div>
                                                <div class="clearfix"></div>
                                                <select class="form-control" size="1" autocomplete="shipping country" data-backup="address" name="UserAddress[billing]" id="billing">
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
                                                $model->street_number = $default_address->street_number;
                                                $model->landmark = $default_address->landmark;
                                                $model->location = $default_address->location;
                                                $model->emirate = $default_address->emirate;
                                                $model->mobile_number = $default_address->mobile_number;
                                                $model->country_code = $default_address->country_code;
                                                $model->country = $default_address->country;
                                        }
                                        ?>
                                        <div class="form-group">
                                                <label>Name</label>
                                                <?= Html::activeTextInput($model, 'name', ['class' => 'form-control billing']); ?>
                                                <label class="error name_error"></label>
                                        </div>
                                        <div class="form-group">
                                                <label>Building Name/Number</label>
                                                <?= Html::activeTextInput($model, 'address', ['class' => 'form-control billing']); ?>
                                                <label class="error address_error"></label>
                                        </div>
                                        <div class="form-group">
                                                <label>Street Name/Number</label>
                                                <?= Html::activeTextInput($model, 'street_number', ['class' => 'form-control billing']); ?>
                                                <label class="error address_error"></label>
                                        </div>

                                        <div class="form-group">
                                                <label>Landmark</label>
                                                <?= Html::activeTextInput($model, 'landmark', ['class' => 'form-control billing']); ?>
                                        </div>
                                        <div class="form-group">
                                                <label>Location</label>
                                                <?= Html::activeTextInput($model, 'location', ['class' => 'form-control billing']); ?>
                                                <label class="error location_error"></label>
                                        </div>
                                        <div class="form-group">
                                                <label>Emirate</label>
                                                <?=
                                                Html::activeDropDownList($model, 'emirate', ArrayHelper::map(Emirates::find()->all(), 'id', 'name'), [
                                                    'class' => 'form-control', 'prompt' => 'select'
                                                ])
                                                ?>
                                                <label class="error emirate_error"></label>
                                        </div>

                                        <div class="form-group">
                                                <label>Country</label>
                                                <?=
                                                Html::activeDropDownList($model, 'country', ArrayHelper::map(\common\models\CountryCode::find()->all(), 'id', 'country_name'), [
                                                    'class' => 'form-control', 'prompt' => 'select'
                                                ])
                                                ?>
                                                <label class="error emirate_error"></label>
                                        </div>

                                        <div class="form-group"><label>Mobile Number</label>

                                                <div class="input-group">
                                                        <span class="input-group-addon">
                                                                <select class="mobile-code"  name="UserAddress[country_code]">
                                                                        <?php foreach ($country_codes as $country_code) { ?>
                                                                                <option value="<?= $country_code ?>" ><?= $country_code ?></option>
                                                                        <?php }
                                                                        ?>
                                                                </select></span>
                                                        <?= Html::activeTextInput($model, 'mobile_number', ['class' => 'checkout-mobile-number']); ?>
                                                </div>
                                                <label class="error mobile_number_error"></label>
                                        </div>

                                        <div class=" check-comment-box">
                                                <div class="form-group">
                                                        <label>User comment</label>
                                                        <textarea name="user_comment" class="form-control"></textarea>
                                                </div>
                                                <!--<div class="form-group">
                                                    <label > <div class="radio-account ">
                                                            <input type="radio" name="payment_method" value="1" data-waschecked="true" required="">
                                                            <span></span> </div><span class="span">Cash On delivery</span></label>

                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="form-group">
                                                    <label > <div class="radio-account ">
                                                            <input type="radio" name="payment_method" value="2" data-waschecked="true">
                                                            <span></span> </div><span class="span">Payment Gateway</span></label>

                                                </div>-->

                                                <div class="clearfix"></div>


                                        </div>

                                        <!--<div class="form-group">
                                        <?= Html::submitButton('Confirm Order', ['class' => 'submit']) ?>
                                        </div>-->
                                        <div class="phone-display-show-payment-method-box">
                                                <div class="select-payment-method-box-right">
                                                        <h3 class="head-right">Select a Payment Method</h3>
                                                        <div class="payment-opption-box">
                                                                <div class="radio-button-box"><div class="radio-account ">
                                                                                <input type="radio" name="payment_method" value="1" data-waschecked="true" required="">
                                                                                <span></span>
                                                                        </div>
                                                                </div>
                                                                <ul class="list-box">
                                                                        <li><img src="images/icons/card3.png" width="55" /></li>
                                                                        <div class="clearfix"></div>
                                                                </ul>
                                                                <h4 class="head-sub">Cash On Delivery</h4>
                                                                <p>Cash on delivery (COD) available. </p>
                                                        </div>
                                                        <div class="payment-opption-box border-bottom-none">
                                                                <div class="radio-button-box"><div class="radio-account ">
                                                                                <input type="radio" name="payment_method" value="2" data-waschecked="true" required="">
                                                                                <span></span>
                                                                        </div>
                                                                </div>
                                                                <ul class="list-box">
                                                                        <li><img src="images/icons/card1.png" width="55" /></li>
                                                                        <li><img src="images/icons/card2.png" width="55" /></li>
                                                                        <div class="clearfix"></div>
                                                                </ul>
                                                                <h4 class="head-sub">Payment Gateway</h4>
                                                                <p>Payment gateway powered by PayTabs.</p>
                                                        </div>
                                                </div>
                                                <div class="checkout-terms-conditions">By continuing to checkout you agree to our <a href="#">Terms and Conditions</a></div>
                                                <div class="submit-button-box"><button type="submit" class="submit-right">Confirm Order</button></div>
                                        </div>


                                </div>

                        </div>
                        <div class="col-md-5 order-two">
                                <?= CartSummaryWidget::widget(); ?>
                        </div>
                        <?php ActiveForm::end(); ?>
                        <!--</div>-->
                </div>
        </div>
</section>

<script>
        jQuery('body').on('change', '#billing', function (e) {
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

jQuery('body').on('click', '#add-new-address', function (e) {
                $('#address-form').find('input:text, input:password, select, textarea').val('');
        });




        function changeaddress(formclass, id) {
                jQuery.ajax({
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
                                $('#' + formclass + '-country_code').val($data.country_code);
                                $('#' + formclass + '-street_number').val($data.street);
                                $('#' + formclass + '-country').val($data.country);

                        } else {
                                $('#' + formclass + '-name').val('');
                                $('#' + formclass + '-address').val('');
                                $('#' + formclass + '-landmark').val('');
                                $('#' + formclass + '-location').val('');
                                $('#' + formclass + '-emirate').val('');
                                $('#' + formclass + '-post_code').val('');
                                $('#' + formclass + '-mobile_number').val('');
                                $('#' + formclass + '-street_number').val('');
                                $('#' + formclass + '-country').val('');
                        }
                });
        }
</script>