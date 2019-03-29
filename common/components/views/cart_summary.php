<?php

use yii\helpers\Html;
use common\models\Product;
use common\models\Fregrance;
use common\models\OrderMaster;
use common\models\Settings;
use common\models\Tax;
?>
<div class="sec-title">Apply coupon</div>

<div class="cart-promotion">
    <div class="coupon">
        <div class="apply-promotion-code">
            <div class="coupon-info">Unlock Offers or Apply promotion</div>
            <div class="code-form">
                <input type="hidden" name="master_order_id" id="master_order_id" value="<?= $master->id ?>">
                <input type="text" name="coupon_code" class="input-text" placeholder="Coupon code" id="coupon_code" value="">
            </div>
            <input name="search_keyword-send" type="submit" class="apply apply-coupen" id="search-keyword-submit" value="Apply Promotion">
            <input type="hidden" id="promotion-codes" name="promotion_codes" value="">
            <input type="hidden" id="promotion-code-amount" name="promotion-code-amount" value="">
            <div class="coupon-code-error-msg">
                <p id="coupon-code-error" style="text-align:left;margin-top:5px;"></p>

            </div>
            <div id="promotions-listing">
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<div class="sec-title">ORDER DETAILS</div>

<div class="cart-box">
    <?php
    $tax_amount = 0;
    $sub_total = 0;
    foreach ($cart_items as $cart) {
        $product = Product::findOne($cart->product_id);
        if ($cart->quantity > 0) {
            $product_image = Yii::$app->basePath . '/../uploads/product/' . $product->id . '/profile/' . $product->canonical_name . '.' . $product->profile;
            if (file_exists($product_image)) {
                $image = Yii::$app->homeUrl . 'uploads/product/' . $product->id . '/profile/' . $product->canonical_name . '.' . $product->profile;
            } else {
                $image = Yii::$app->homeUrl . 'uploads/product/profile_thumb.png';
            }
            if ($product->offer_price == '0' || $product->offer_price == '') {
                $price = $product->price;
            } else {
                $price = $product->offer_price;
            }
            $total = $price * $cart->quantity;
            if ($cart->tax != '') {
                $tax = $cart->tax;
            }
            $tax_amount += $tax;
            $sub_total += $total;
            ?>
            <div class="cart-list">
                <div class="row">
                    <a class="thumbnail pull-left col-md-3 col-4" href=""> 
                        <img src="<?= $image ?>" class="img-fluid" alt="Ck Euphoria Men Edt 100Ml" width="150">
                    </a>
                    <div class="col-md-9 col-8">
                        <div class="product-info">
                            <a class="product-name" href=""><?= $product->product_name ?></a>
                            <div class="price"><span>AED <?= sprintf("%0.2f", $total) ?></span></div>
                            <div class="quantity">Quantity: <span><?= $cart->quantity ?></span></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        <?php
        }
    }
    ?>
    <div class="cart-box-footer">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="price-head">Subtotal:<span class="cart_subtotal">AED <?= sprintf("%0.2f", $sub_total) ?></span></h4>
                <h4 class="price-head ">SHIPPING:<span class="amount shipping-cost">AED <?= sprintf("%0.2f", $shipping) ?></span></h4>
                <h4 class="price-head ">Tax:<span class="amount shipping-cost">AED <?= sprintf("%0.2f", $tax_amount) ?></span></h4>
                <?php
                $promotion_discount = 0;
                if (isset($promotions) && $promotions > 0) {
                    $promotion_discount = $promotions;
                    ?>
                    <h4 class="price-head">PROMOTION:<span>AED <?= sprintf("%0.2f", $promotion_discount) ?></span></h4>
                <?php } ?>
                <?php
                $gift_wrap = 0;
                if ($master->gift_wrap == 1) {
                    $gift_wrap = $master->gift_wrap_value;
                    ?>
                    <h4 class="price-head">GIFT WRAP:<span>AED <?= sprintf("%0.2f", $gift_wrap) ?></span></h4>
<?php } ?>
                <div class="cart-promotions" style="display: none">
                    <h4 class="price-head">Coupon Code:<span class="promotion_discount"></span></h4>
                </div>
            </div>
        </div>
        <div class="total-price">
            <h4 class="price-head ">TOTAL:<span class="grand_total checkout-total">AED <?= sprintf("%0.2f", $master->net_amount) ?></span></h4>
        </div>
    </div>
</div>

<div class="payment-optns">
    <p>Ways you can pay</p>
    <ul>
        <li><img src="images/icons/payment-optns.png" class="img-fluid"></li>
    </ul>
</div>

<div class="payment-method">
    <div class="head">Select a Payment Method</div>
    <div class="options">
        <label class="input-style-box">
            <input name="payment_method" checked="" type="radio" value="1" required="">
            <span class="checkmark"></span> <img src="images/icons/cod-pay.png" class="img-fluid">
        </label>
        <div class="cod">
            <div class="title">Cash On Delivery</div>
            <div class="info">Lorem Ipsum is simply dummy text of the printing</div>
        </div>
    </div>
    <!--
        <div class="options">
            <label class="input-style-box">
                <input name="payment_method" type="radio" value="2" required="">
                <span class="checkmark"></span> <img src="images/icons/master-pay.png" class="img-fluid"> <img src="images/icons/visa-pay.png" class="img-fluid">
            </label>
            <div class="cod">
                <div class="title">Payment Gateway</div>
                <div class="info">Lorem Ipsum is simply dummy text of the printing</div>
            </div>
        </div>-->

    <div class="terms-warning">By continuing to checkout you agree to our <a href="#!">Terms and Conditions</a></div>

</div>