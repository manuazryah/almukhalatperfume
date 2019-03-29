<?php

use yii\helpers\Html;
use common\models\Product;
use yii\widgets\Pjax;

if (isset($meta_title) && $meta_title != '') {
    $this->title = $meta_title;
} else {
    $this->title = 'Shopping Cart';
}
$cart_item_count = 0;
$useragent = $_SERVER['HTTP_USER_AGENT'];
?>
<div id="cart-page" class="inner-page">
    <section class="breadcrumb">
        <div class="container">
            <ul>
                <!--<li><a href="index.php">Home</a></li>-->
                <li class="current"><a href="#!">Shopping Cart</a></li>
            </ul>
        </div>
    </section>
    <?php Pjax::begin(['id' => 'shopping_cart_id']) ?>
    <section id="cart-list">
        <div class="container">
            <div class="col-12">
                <div class="row">
                    <input type="hidden" id="cart_count" value="<?= count($cart_items); ?>">
                    <?php
                    if (preg_match('/android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i', $useragent) || preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i', substr($useragent, 0, 4))) {
                        ?>
                        <div class="mobile-cart-view">

                            <?php
                            foreach ($cart_items as $cart_item) {
                                if ($cart_item->quantity > 0) {
                                    $cart_item_count++;
                                }
                                $prod_details = Product::find()->where(['id' => $cart_item->product_id, 'status' => '1'])->one();
                                if ($prod_details->offer_price == '0' || $prod_details->offer_price == '') {
                                    $price = $prod_details->price;
                                } else {
                                    $price = $prod_details->offer_price;
                                }
                                $product_image = Yii::$app->basePath . '/../uploads/product/' . $prod_details->id . '/profile/' . $prod_details->canonical_name . '.' . $prod_details->profile;
                                if (file_exists($product_image)) {
                                    $image = '<img src="' . Yii::$app->homeUrl . 'uploads/product/' . $prod_details->id . '/profile/' . $prod_details->canonical_name . '.' . $prod_details->profile . '" alt="' . $prod_details->canonical_name . '" width="150" class="img-fluid"/>';
                                } else {
                                    $image = '<img src="' . Yii::$app->homeUrl . 'uploads/product/profile_thumb.png" alt="dummy-image" width="150" class="img-fluid"/>';
                                }
                                ?>
                                <div class="media cart-table <?= $cart_item->quantity == 0 ? 'stock-out-row' : '' ?>">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="track">
                                                <a href="" class="remove_cart remove-cart" data-product_id="<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_item->id); ?>"><i class="far fa-trash-alt"></i></a>
                                            </div>
                                        </div>
                                        <?= Html::a($image, ['product/product-detail', 'product' => $prod_details->canonical_name], ['title' => $prod_details->product_name, 'class' => 'thumbnail pull-left col-md-3 col-sm-4']) ?>
                                        <div class="col-md-9 col-sm-8">
                                            <?= Html::a($prod_details->product_name, ['product/product-detail', 'product' => $prod_details->canonical_name], ['title' => $prod_details->product_name, 'class' => 'product-name']) ?>
                                            <div class="product-info">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <p><strong>Price</strong></p>
                                                    </div>
                                                    <div class="col-7">
                                                        <?php if ($cart_item->quantity == 0) { ?>
                                                            <p class="out_of_stock_label">Out of stock</p>
                                                        <?php } else { ?>
                                                            <p class="">AED <?= sprintf("%0.2f", $price) ?></p>
                                                        <?php }
                                                        ?>
                                                    </div>
                                                    <div class="col-4">
                                                        <p><strong>Quantity</strong></p>
                                                    </div>
                                                    <div class="col-7">
                                                        <div class="form-group quantity">
                                                            <select class="form-control cart_quantity" name="Quantity" id="quantity_<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_item->id); ?>">
                                                                <?php if ($cart_item->quantity == 0) { ?>
                                                                    <option <?= $cart_item->quantity == 0 ? 'selected' : '' ?> value="0">0</option>
                                                                <?php }
                                                                ?>
                                                                <?php
                                                                for ($i = 1; $i <= $prod_details->stock; $i++) {
                                                                    ?>
                                                                    <option <?= $cart_item->quantity == $i ? 'selected' : '' ?> value="<?= $i ?>"><?= $i ?></option>
                                                                    <?php
                                                                }
                                                                ?>
                                                            </select>                       
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="col-12">
                                            <div class="item-total">
                                                <div class="col-12">
                                                    <div class="row">
                                                        <div class="col-4 heading">
                                                            <p><strong>Item Total</strong></p>
                                                        </div>
                                                        <div class="col-7 amount">
                                                            <?php $total = $price * $cart_item->quantity; ?>
                                                            <p class="text-right" id="total_<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_item->id) ?>">AED <?= sprintf("%0.2f", $total) ?></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                            ?>
                        </div>

                        <?php
                    } else {
                        ?>
                        <table class="table cart-table desktop-cart-view">
                            <thead>
                                <tr>
                                    <th><div class="head-text">Product</div></th>
                                    <th><div class="head-text">Price</div></th>
                                    <th><div class="head-text">QTY</div></th>
                                    <th><div class="head-text">Total</div></th>
                                    <th><div class="head-text">Remove</div></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($cart_items as $cart_item) {
                                    if ($cart_item->quantity > 0) {
                                        $cart_item_count++;
                                    }
                                    $prod_details = Product::find()->where(['id' => $cart_item->product_id, 'status' => '1'])->one();
                                    if ($prod_details->offer_price == '0' || $prod_details->offer_price == '') {
                                        $price = $prod_details->price;
                                    } else {
                                        $price = $prod_details->offer_price;
                                    }
                                    $product_image = Yii::$app->basePath . '/../uploads/product/' . $prod_details->id . '/profile/' . $prod_details->canonical_name . '.' . $prod_details->profile;
                                    if (file_exists($product_image)) {
                                        $image = '<img src="' . Yii::$app->homeUrl . 'uploads/product/' . $prod_details->id . '/profile/' . $prod_details->canonical_name . '.' . $prod_details->profile . '" alt="' . $prod_details->canonical_name . '" width="90"/>';
                                    } else {
                                        $image = '<img src="' . Yii::$app->homeUrl . 'uploads/product/profile_thumb.png" alt="" width="90"/>';
                                    }
                                    ?>
                                    <tr class="cart_item tr_<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_item->id); ?> <?= $cart_item->quantity == 0 ? 'stock-out-row' : '' ?>">
                                        <td class="td">
                                            <div class="row">
                                                <div class="col-sm-3"> 
                                                    <?= Html::a($image, ['product/product-detail', 'product' => $prod_details->canonical_name], ['title' => $prod_details->product_name, 'class' => 'thumbnail pull-left col-md-3 col-sm-4']) ?>
                                                </div>
                                                <div class="col-sm-9">
                                                    <?= Html::a($prod_details->product_name, ['product/product-detail', 'product' => $prod_details->canonical_name], ['title' => $prod_details->product_name, 'class' => 'product-name']) ?>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <?php if ($cart_item->quantity == 0) { ?>
                                                <h3 class="out_of_stock_label">Out of stock</h3>
                                            <?php } else { ?>
                                                <h3 class="price">AED <?= sprintf("%0.2f", $price) ?></h3>
                                            <?php }
                                            ?>
                                        </td>
                                        <td>
                                            <div class="form-group quantity">
                                                <select class="form-control cart_quantity" id="quantity_<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_item->id); ?>" name="Quantity">
                                                    <?php if ($cart_item->quantity == 0) { ?>
                                                        <option <?= $cart_item->quantity == 0 ? 'selected' : '' ?> value="0">0</option>
                                                    <?php }
                                                    ?>
                                                    <?php
                                                    for ($i = 1; $i <= $prod_details->stock; $i++) {
                                                        ?>
                                                        <option <?= $cart_item->quantity == $i ? 'selected' : '' ?> value="<?= $i ?>"><?= $i ?></option>
                                                        <?php
                                                    }
                                                    ?>
                                                </select>                      
                                            </div>
                                        </td>
                                        <td>
                                            <?php $total = $price * $cart_item->quantity; ?>
                                            <h3 class="price" id="total_<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_item->id) ?>">AED <?= sprintf("%0.2f", $total) ?></h3>
                                        </td>
                                        <td><a href="" class="remove_cart remove-cart" data-product_id="<?= yii::$app->EncryptDecrypt->Encrypt('encrypt', $cart_item->id); ?>" ><i class="far fa-trash-alt"></i></a></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>

                        <?php
                    }
                    ?>
                    <div class="cart-main-info">
                        <div class="total-price-section">
                            <div class="fright">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="price-head">Subtotal:<span class="cart_subtotal">AED <?= sprintf("%0.2f", $subtotal) ?></span></h4>
                                        <?php $shipping_minimum = common\models\Settings::findOne(1)->value; ?>
                                        <span class="min_ship_amount" style="display:none"><?= $shipping_minimum ?></span>
                                        <?php
                                        $balance = '';
                                        if ($shipping_minimum > $subtotal) {
                                            $balance = $shipping_minimum - $subtotal;
                                            $class = '';
                                        } else {
                                            $class = 'hide';
                                        }
                                        ?>
                                        <h4 class="price-head ">SHIPPING:<span class="amount shipping-cost">AED <?= sprintf("%0.2f", '0.00') ?></span></h4>
                                        <h4 class="price-head">GIFT WRAP:<span><input type="checkbox" name="gift-wrap" id="gift-wrap" class="gift-wrap"></span></h4>
                                    </div>
                                </div>
                                <div class="total-price">
                                    <h4 class="price-head ">TOTAL:<span class="grand_total">AED <?= sprintf("%0.2f", $grand_total) ?></span></h4>
                                    <input type="hidden" class="grand_total_value" value="<?= $grand_total ?>">
                                    <input type="hidden" name="subb_total" id="subb_total" value="<?= $subtotal ?>">
                                </div>
                                <div class="payment-optns">
                                    <p>Ways you can pay</p>
                                    <ul>
                                        <li><img src="<?= Yii::$app->homeUrl ?>images/icons/payment-optns.png" class="img-fluid"></li>
                                    </ul>
                                </div>
                                <div class="button-section "> 
                                    <?php if (empty(Yii::$app->user->identity)) { ?>
                                        <?= Html::a('Login to Checkout', ['/site/login-signup', 'go' => Yii::$app->request->hostInfo . Yii::$app->request->url], ['class' => 'check-out', 'id' => 'loginCheckout']) ?>
                                        <?php
                                    } else {
                                        if ($cart_item_count > 0) {
                                            ?>
                                            <?= Html::a('check out', ['/cart/proceed'], ['class' => 'check-out']) ?>     
                                        <?php } else { ?>
                                            <?= Html::a('continue shopping', ['/site/index'], ['class' => 'check-out']) ?>
                                            <?php
                                        }
                                    }
                                    ?>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php Pjax::end() ?>
</div>
<?php $giftwrap = \common\models\Settings::findOne(5)->value; ?>
<span class="giftwrap_value" style="display:none"><?= $giftwrap ?></span>