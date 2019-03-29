<?php

use yii\helpers\Html;

if (!empty($cart_contents)) {
    foreach ($cart_contents as $cart_content) {
        $prod_details = common\models\Product::find()->where(['id' => $cart_content->product_id, 'status' => '1'])->one();
        if ($prod_details->offer_price == '0' || $prod_details->offer_price == '') {
            $price = $prod_details->price;
        } else {
            $price = $prod_details->offer_price;
        }
        $product_image = Yii::$app->basePath . '/../uploads/product/' . $prod_details->id . '/profile/' . $prod_details->canonical_name . '.' . $prod_details->profile;
        if (file_exists($product_image)) {
            $image = '<img class="product-image img-responsive" src="' . yii::$app->homeUrl . 'uploads/product/' . $prod_details->id . '/profile/' . $prod_details->canonical_name . '_thumb.' . $prod_details->profile . '" alt="' . $prod_details->product_name . '" title="" width="100" height="100">';
        } else {
            $image = '<img src="' . Yii::$app->homeUrl . 'uploads/product/profile_thumb.png" alt="' . $prod_details->product_name . '" class="product-image img-responsive" width="100" height="100"/>';
        }
        $product_name = $prod_details->product_name;
        if (strlen($product_name) > 25) {
            $str = substr($product_name, 0, 25) . '...';
        } else {
            $str = $product_name;
        }
        ?>
        <li id="<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_content->id) ?>">
            <div class="cart-box">
                <div class="row">
                    <div class="col-4">
                        <div class="img-box">
                            <?= Html::a($image, ['/product/product-detail', 'product' => $prod_details->canonical_name]) ?>
                        </div>
                    </div>
                    <div class="col-8">
                        <div class="cont-box">
                            <h4 class="head">
                                <?= Html::a($str, ['/product/product-detail', 'product' => $prod_details->canonical_name]) ?>
                            </h4>
                            <?php if ($prod_details->stock == 0) { ?>
                                <h5 class="price">Out of stock</h5>
                            <?php } else {
                                ?>
                                <h5 class="price">$ <?= sprintf("%0.2f", $price) ?></h5>
                                <h6 class="Quantity">Quantity: <?= $cart_content->quantity ?></h6>
                            <?php }
                            ?>
                            <a class="remove-from-cart remove_cart_product close" rel="nofollow" href="" data-product_id="<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_content->id) ?>" data-link-action="remove-from-cart" title="Remove from cart">
                                <i class="far fa-times-circle"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <?php
    }
    ?>
    <li id="checkout-links">
        <?= Html::a('View cart', ['/cart/mycart'], ['class' => 'check-out cart-button']) ?>
        <?= Html::a('Check out', ['/cart/proceed'], ['class' => 'check-out']) ?>
    </li>
    <?php
}
?>