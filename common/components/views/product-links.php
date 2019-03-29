<?php

use yii\helpers\Html;
use yii\helpers\Url;
?>
<div class="col-lg-3 col-md-4 col-6 mob-full">
    <div class="product-box">
        <?php
        if ($product_details->offer_price != "0" && isset($product_details->offer_price)) {
            $percentage = round(100 - (($product_details->offer_price / $product_details->price) * 100));
            $main_price = $product_details->offer_price;
            $price = 'AED ' . $product_details->price;
            ?>
            <div class="off-tag"><?= $percentage ?>% OFF</div>
            <?php
        } else {
            $main_price = $product_details->price;
            $price = '.';
        }
        ?>
        <?php
        $product_image = Yii::$app->basePath . '/../uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile;
        if (file_exists($product_image)) {
            $image_src = Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile;
        } else {
            $image_src = Yii::$app->homeUrl . 'uploads/product/gallery_dummy.png';
        }
        ?>
        <?= Html::a('<img  class="img-fluid" src="' . $image_src . '" alt="' . $product_details->canonical_name . '" />', ['product/product-detail', 'product' => $product_details->canonical_name], ['title' => $product_details->product_name, 'class' => 'img-box']) ?>
        <input type="hidden" id="quantity" value="1">
        <div class="content">
            <?php
            if (strlen($product_details->product_name) > 35) {
                $pname = substr(strtolower($product_details->product_name), 0, 33) . "..";
            } else {
                $pname = strtolower($product_details->product_name);
            }
            ?>
            <?= Html::a(ucwords($pname), ['product/product-detail', 'product' => $product_details->canonical_name], ['title' => $product_details->product_name, 'class' => 'title']) ?>
            <?php
            if ($product_details->offer_price != "0" && isset($product_details->offer_price)) {
                $percentage = round(100 - (($product_details->offer_price / $product_details->price) * 100));
                ?>
                <div class="off-price">AED <?= $main_price; ?></div>
                <?php
            }
            ?>
            <div class="og-price">AED <?= $product_details->price; ?></div>
        </div>
        <div class="box-foot">
            <a href="" class="check-out cart-button add-cart" pro_id="<?= $product_details->canonical_name ?>">Add to cart</a>                
            <a class="check-out buy-now" href="" pro_id="<?= $product_details->canonical_name ?>">Buy now</a>       
        </div>
        <div class="cartlist-popup alert-success alert_<?= $product_details->canonical_name ?> hide">
            <i class="fa fa-check" aria-hidden="true"></i>Successfully added to cart.
        </div>
    </div>  
</div>