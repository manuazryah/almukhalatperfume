<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use common\models\Unit;
use common\models\Product;
use yii\widgets\ActiveForm;

if (isset($product_details->meta_title) && $product_details->meta_title != '') {
    $this->title = $product_details->meta_title;
} else {
    $this->title = $product_details->canonical_name;
}
?>

<div id="product-page" class="product-detail-page inner-page">
    <section class="breadcrumb">
        <div class="container">
            <ul>
                <?php
                $catag = common\models\Category::find()->one();
                ?>
                <li><?= Html::a('Home', ['/site/index']) ?></li>
                <li class="current"><a href="">Men</a></li>
            </ul>
        </div>
    </section>
    <div class="container">
        <section  id="product-gallery" class="product-view">
            <div class="row">
                <div class="col-md-12 hidden-xl hidden-lg">
                    <div class="head">
                        <h2 class="heading"><?= $product_details->product_name ?></h2>
                        <ul>
                            <li>
                                <div class="rating">
                                    <span class="fas fa-star checked"></span>
                                    <span class="fas fa-star checked"></span>
                                    <span class="fas fa-star checked"></span>
                                    <span class="fas fa-star"></span>
                                    <span class="fas fa-star"></span>
                                </div>
                            </li>
                            <li>(3.0)  reviews</li>
                            <li><a href="#!">Write a review</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-5 pro-gallery-grid">
                    <div class="pro-image-zoom" data-columns="4">
                        <figure class="product-gallery__wrapper">
                            <?php
                            $product_image = Yii::$app->basePath . '/../uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '.' . $product_details->profile;
                            if (file_exists($product_image)) {
                                ?>
                                <div data-thumb="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile ?>" class="product-gallery__image">
                                    <a class="wpb-wiz-main-images">
                                        <div class="zoomWrapper"><img src="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile ?>" class="wpb-wiz-main-image wp-post-image img-fluid" alt="" title="" data-zoom-image="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile ?>" ></div>
                                    </a>
                                </div>
                                <?php
                            } else {
                                ?>
                                <div data-thumb="<?= Yii::$app->homeUrl . 'uploads/product/gallery_dummy.png' ?>" class="product-gallery__image">
                                    <a class="wpb-wiz-main-images">
                                        <div class="zoomWrapper"><img src="<?= Yii::$app->homeUrl . 'uploads/product/gallery_dummy.png' ?>" class="wpb-wiz-main-image wp-post-image img-fluid" alt="" title="" data-zoom-image="<?= Yii::$app->homeUrl . 'uploads/product/gallery_dummy.png' ?>" ></div>
                                    </a>
                                </div>
                            <?php }
                            ?>

                            <div id="wpb_wiz_gallery" class="thumbnails wpb_wiz_gallery_slider owl-theme owl-carousel" style="display: block;">
                                <div class="owl-wrapper-outer">
                                    <div class="owl-wrapper" style="display: block;">
                                        <?php
                                        if (file_exists($product_image)) {
                                            ?>
                                            <div class="owl-item">
                                                <div class="wpb-woocommerce-product-gallery__image">
                                                    <a href="#!" data-image="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile ?>" data-zoom-image="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile ?>"><img width="250" height="250" src="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/profile/' . $product_details->canonical_name . '_big.' . $product_details->profile ?>" class="attachment-shop_single size-shop_single img-fluid" alt="" title=""></a>
                                                </div>
                                            </div>
                                        <?php }
                                        ?>
                                        <?php
                                        $path = Yii::getAlias('@paths') . '/product/' . $product_details->id . '/gallery_thumb';
                                        if (file_exists($product_image)) {
                                            if (count(glob("{$path}/*")) > 0) {

                                                $k = 0;
                                                foreach (glob("{$path}/*") as $file) {
                                                    if ($k <= '2') {
                                                        $k++;
                                                        $arry = explode('/', $file);
                                                        $img_nmee = end($arry);
                                                        $img_nmees = explode('.', $img_nmee);
                                                        if ($img_nmees['1'] != '') {
                                                            ?>
                                                            <div class="owl-item">
                                                                <div class="wpb-woocommerce-product-gallery__image">
                                                                    <a href="#!" data-image="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/gallery/' . end($arry) ?>" data-zoom-image="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/gallery/' . end($arry) ?>"><img width="250" height="250" src="<?= Yii::$app->homeUrl . 'uploads/product/' . $product_details->id . '/gallery/' . end($arry) ?>" class="attachment-shop_single size-shop_single img-fluid" alt="" title=""></a>
                                                                </div>
                                                            </div>
                                                            <?php
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </figure>
                    </div>
                </div>
                <div class="col-lg-7 prodtl">
                    <div class="head hidden-md hidden-sm hidden-xs">
                        <h2 class="heading"><?= $product_details->product_name ?></h2>
                        <ul>
                            <li>
                                <div class="rating">
                                    <span class="fas fa-star checked"></span>
                                    <span class="fas fa-star checked"></span>
                                    <span class="fas fa-star checked"></span>
                                    <span class="fas fa-star"></span>
                                    <span class="fas fa-star"></span>
                                </div>
                            </li>
                            <li>(3.0)  reviews</li>
                            <li>
                                <?php if (isset(Yii::$app->user->identity->id)) { ?>
                                    <a class="add-review" id="add-review" href="#" val="<?= $product_details->id ?>">Write a review                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   </a>
                                <?php } else { ?>
                                    <?= Html::a('Write a review', ['/site/login-signup']) ?>
                                <?php } ?>
                            </li>
                        </ul>
                    </div>
                    <div class="product-details">
                        <div class="row">
                            <?php
                            if ($product_details->offer_price != "0" && isset($product_details->offer_price)) {
                                $percentage = round(100 - (($product_details->offer_price / $product_details->price) * 100));
                                $main_price = $product_details->offer_price;
                                $price = 'AED ' . $product_details->price;
                                ?>
                                <?php
                            } else {
                                $main_price = $product_details->price;
                                $price = '';
                            }
                            ?>
                            <div class="col-md-6 lft-box">
                                <div class="price-details">
                                    <p class="current-price"><span>AED <?= $main_price ?></span></p>
                                    <?php if ($product_details->offer_price != "0" && isset($product_details->offer_price)) { ?>
                                        <p class="actual-price">was <span><?= $price ?></span> <span class="off-price"><?= $percentage ?>% OFF</span></p>
                                    <?php } ?>
                                    <p class="cash-delivery-tag">Inclusive of VAT</p>
                                </div>
                                <div class="item-detail">
                                    <?php
                                    if (isset($product_details->brand)) {
                                        $brand = common\models\Brand::findOne($product_details->brand);
                                        ?>
                                    <?php }
                                    ?>
                                    <?php
                                    $form1 = ActiveForm::begin([
                                                'method' => 'get',
                                                'id' => 'filter-search-form7',
                                                'action' => ['/product/index']
                                    ]);
                                    ?>
                                    <p>Brand:<a href="" class="brand-link"><?= $brand->brand ?>.</a></p>
                                    <input type="hidden" name="Filter[brand][]" value="<?= $brand->id ?>"/>
                                    <?php ActiveForm::end(); ?>
                                    <?php $fregrance = \common\models\Fregrance::findOne($product_details->product_type); ?>
                                    <p>Fragrance type: <span><?= isset($fregrance->name) && $fregrance->name != '' ? $fregrance->name : '' ?></span></p>
                                    <?php
                                    $unit = Unit::findOne($product_details->size_unit);
                                    $unit_name = '';
                                    if (isset($unit->unit_name) && $unit->unit_name != '') {
                                        $unit_name = $unit->unit_name;
                                    }
                                    ?>
                                    <p>Sizes: <span><?= $product_details->size . $unit_name ?></span></p>
                                    <p>Product Code: <span><?= $product_details->ean_value ?></span></p>
                                </div>
                            </div>
                            <div class="col-md-6 rit-box">
                                <div class="action-details">
                                    <div class="cartlist-popup-dtl alert-success alert_<?= $product_details->canonical_name ?> hide">
                                        <i class="fa fa-check" aria-hidden="true"></i>Successfully added to cart.
                                    </div>
                                    <div class="wishlist-popup-dtl alert-success wishalert_<?= $product_details->canonical_name ?> hide">
                                    </div>
                                    <?php if ($product_details->stock > 0) { ?>
                                        <p class="stock-detail">In stock</p>
                                    <?php } else { ?>
                                        <p class="stock-detail">Out of stock</p>
                                    <?php } ?>
                                    <div class="form-group quantity">
                                        <label>Quantity</label>
                                        <select class="form-control  quantity" id="quantity" name="Quantity">
                                            <?php
                                            for ($i = 1; $i <= $product_details->stock; $i++) {
                                                ?>
                                                <option value="<?= $i ?>"><?= $i ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <a href="javascript:void(0)" class="wish-list-btn add_to_wish_list" pro_id="<?= $product_details->canonical_name ?>"><i class="fas fa-heart"></i>wishlist</a>
                                    <div class="clear"></div>
                                    <div class="button-box">
                                        <a href="javascript:void(0)" class="add-2-bag add-cart added-msg" pro_id="<?= $product_details->canonical_name ?>"><icon><img class="img-fluid" src="<?= yii::$app->homeUrl; ?>images/icons/bag2.png"/></icon>Add to bag</a>
                                        <a href="javascript:void(0)" class="buy-now" pro_id="<?= $product_details->canonical_name ?>">Buy now</a>
                                    </div>
                                    <div class="payment-optns">
                                        <p>Ways you can pay</p>
                                        <ul>
                                            <li><img src="<?= Yii::$app->homeUrl ?>images/icons/visa-pay.png" class="img-fluid"></li>
                                            <li><img src="<?= Yii::$app->homeUrl ?>images/icons/master-pay.png" class="img-fluid"></li>
                                            <li><img src="<?= Yii::$app->homeUrl ?>images/icons/cod-pay.png" class="img-fluid"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="special-details">
                        <ul>
                            <li><icon><img src="<?= Yii::$app->homeUrl ?>images/icons/cod.png" class="img-fluid" width="46" height="46"></icon>Cash On Delivery <span>Receive products in amazing time</span></li>
                            <li><icon><img src="<?= Yii::$app->homeUrl ?>images/icons/freeshipping.png" class="img-fluid" width="46" height="46"></icon>Free SHIPPING <span>Receive products in amazing time</span></li>
                            <li><icon><img src="<?= Yii::$app->homeUrl ?>images/icons/authentic.png" class="img-fluid" width="46" height="46"></icon>100%  AUTHENTIC <span>We only sell 100% authentic products</span></li>
                            <li><icon><img src="<?= Yii::$app->homeUrl ?>images/icons/secure.png" class="img-fluid" width="46" height="46"></icon>SECURE SHOPPING <span>Your data is always protected</span></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </section>

        <section id="product-info">
            <div class="main_head">
                <div class="head">PRODUCT INFORMATION</div>
                <div class="sub-head">Best Quality Products</div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="product-spec">
                        <div class="spec-box">
                            <div class="spec-title">Specifications</div>
                            <?php
                            if (isset($product_details->gender_type)) {

                                if ($product_details->gender_type == 1) {
                                    $targeted = 'Men';
                                } else if ($product_details->gender_type == 2) {
                                    $targeted = 'Women';
                                } else if ($product_details->gender_type == 3) {
                                    $targeted = 'Unisex';
                                } else if ($product_details->gender_type == 4) {
                                    $targeted = 'Oriental';
                                } else if ($product_details->gender_type == 5) {
                                    $targeted = 'Kids';
                                }
                            }
                            ?>
                            <ul>
                                <li>Brand: <span><?= $brand->brand ?>.</span></li>
                                <li>Fragrance Type: <span><?= isset($fregrance->name) && $fregrance->name != '' ? $fregrance->name : '' ?>.</span></li>
                                <li>Size: <span><?= $product_details->size . $unit_name ?></span></li>
                                <li>Product Code: <span><?= $product_details->ean_value ?></span></li>
                                <li>Targeted Group: <span><?= $targeted ?></span></li>
                            </ul>
                        </div>
                        <div class="spec-box">
                            <div class="spec-title">DESCRIPTION</div>
                            <?= $product_details->product_detail ?>
                        </div>
                        <div class="customer-reviews">
                            <div class="spec-title">CUSTOMER REVIEWS</div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="total-rating">
                                        <div class="count"><span>4.5</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php
        if (!empty($recently_viewed)) {
            ?>
            <section id="related-products">
                <div class="main_head">
                    <div class="head">Recently Viewed PRODUCTS</div>
                    <div class="sub-head">Best Quality Products</div>
                </div>
                <div class="carousel-controls product-carousel-controls">
                    <div class="product-carousel">
                        <?php
                        foreach ($recently_viewed as $recent) {
                            if (!empty($recent) && $recent != '') {

                                $product_exist = Product::findOne($recent->product_id);
                                if (isset($product_exist)) {

                                    if ($product_exist->stock > 0) {
                                        ?>
                                        <?= \common\components\RelatedProductWidget::widget(['id' => $product_exist->id]) ?>
                                        <?php
                                    }
                                }
                            }
                        }
                        ?>
                    </div>
                </div>
            </section>
        <?php } ?>
        <?php
        if (!empty($related_poduct)) {
            ?>
            <section id="related-products">
                <div class="main_head">
                    <div class="head">RELATED PRODUCTS</div>
                    <div class="sub-head">Best Quality Products</div>
                </div>
                <div class="carousel-controls product-carousel-controls">
                    <div class="product-carousel">
                        <?php
                        foreach ($related_poduct as $related) {
                            if (!empty($related) && $related != '') {

                                $product_exist = Product::findOne($related->id);
                                if (isset($product_exist)) {

                                    if ($product_exist->stock > 0) {
                                        ?>
                                        <?= \common\components\RelatedProductWidget::widget(['id' => $product_exist->id]) ?>
                                        <?php
                                    }
                                }
                            }
                        }
                        ?>
                    </div>
                </div>
            </section>
        <?php } ?>
        <div class="settings-edit-popup">
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog modal-md" role="document" id="data-content">


                </div>
            </div>
        </div>
    </div>

</div>
<script>
    $(document).ready(function () {
        $(document).on('click', '#add-review', function (e) {
            e.preventDefault();
            var product = $(this).attr('val');
            $.ajax({
                type: 'POST',
                url: homeUrl + 'product/review',
                data: {product: product},
                success: function (data) {
                    $("#data-content").html(data);
                    $('#exampleModal').modal('show', {backdrop: 'static'});
                }
            });
        });


        $(document).on('submit', '#submit-reviews', function (e) {
            e.preventDefault();
            var str = jQuery(this).serialize();
            $.ajax({
                url: '<?= Yii::$app->homeUrl; ?>product/submit-review',
                type: "POST",
                data: str,
                success: function (data) {
                    var obj = JSON.parse(data);
                    $('#submit-reviews')[0].reset();
                    if (obj.result == 1) {
                        $(".modal-header").after("<p class='contact-sucess-mag'>Review added successfully</p>");
                    }
                    setTimeout(function () {
                        $('#exampleModal').modal('hide');
                    }, 3000);
                }
            });
            return false;
        });

        $('.brand-link').click(function () {
            $("#filter-search-form7").submit();
        });

    });
</script>
