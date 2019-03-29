<?php
/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<?php
if (!empty($sliders)) {
    ?>
    <section id="main-slider">
        <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel" data-interval="5000">
            <ol class="carousel-indicators">
                <?php
                $i = 0;
                foreach ($sliders as $slider) {
                    ?>
                    <li data-target="#carouselExampleIndicators" data-slide-to="<?= $i ?>" class="<?= $i == 0 ? 'active' : '' ?>"></li>
                    <?php
                    $i++;
                }
                ?>
            </ol>
            <div class="carousel-inner">
                <?php
                $j = 0;
                foreach ($sliders as $slider) {
                    ?>
                    <div class="carousel-item <?= $j == 0 ? 'active' : '' ?>">
                        <img class="d-block w-100" src="<?= yii::$app->homeUrl; ?>uploads/cms/slider/<?= $slider->id ?>/large.<?= $slider->img ?>" alt="<?= $slider->alt_tag_content ?>">
                    </div>
                    <?php
                    $j++;
                }
                ?>
            </div>
        </div>
    </section>
    <?php
}
?>
<?php
if (!empty($our_categories)) {
    ?>
    <section id="our-category">
        <div class="container">
            <div class="main_head">
                <div class="head">Our Category</div>
                <div class="sub-head">Best Quality Products</div>
            </div>

            <div class="row">
                <?php
                foreach ($our_categories as $our_category) {
                    if ($our_category->id == 1) {
                        ?>
                        <div class="col-md-8">
                            <a class="link" href="<?= $our_category->link ?>"><img src="<?= yii::$app->homeUrl; ?>uploads/cms/our-categories/<?= $our_category->id ?>/large.<?= $our_category->image ?>" class="img-fluid" alt="our category img"/></a>
                        </div> 
                    <?php } elseif ($our_category->id == 2) { ?>
                        <div class="col-md-4">
                            <a class="link" href="<?= $our_category->link ?>"><img src="<?= yii::$app->homeUrl; ?>uploads/cms/our-categories/<?= $our_category->id ?>/large.<?= $our_category->image ?>" class="img-fluid" alt="our category img"/></a>
                        </div>
                    <?php } elseif ($our_category->id == 3) { ?>
                        <div class="col-md-4">
                            <div class="off-sale">
                                <div class="ad"><?= $our_category->category ?></div>
                                <div class="span">New Arrivals</div>
                                <a href="<?= $our_category->link ?>" class="shopnow">Shop Now</a>
                            </div>
                        </div>
                    <?php } elseif ($our_category->id == 4) { ?>
                        <div class="col-md-8">
                            <a class="link" href="<?= $our_category->link ?>"><img src="<?= yii::$app->homeUrl; ?>uploads/cms/our-categories/<?= $our_category->id ?>/large.<?= $our_category->image ?>" class="img-fluid" alt="our category img"/></a>
                        </div>
                        <?php
                    }
                }
                ?>
            </div>
        </div>
    </section>
    <?php
}
?>
<section id="free-delivery-info">
    <div class="container">
        <div class="info">
            <?= $home_contents->delivery_information ?>
        </div>
    </div>
</section>

<section id="our-perfume">
    <div class="container">
        <div class="main_head">
            <div class="head">Our Perfume</div>
            <div class="sub-head">Best Quality Products</div>
        </div>
        <div class="row">
            <?php
            if (!empty($our_perfumes)) {
                $our_perfumes_lists = explode(',', $our_perfumes->product_id);

                $i = 0;
                foreach ($our_perfumes_lists as $our_perfumes_product) {
                    if (!empty($our_perfumes_product) && $our_perfumes_product != '') {
                        $product_exist = \common\models\Product::findOne($our_perfumes_product);
                        if (isset($product_exist)) {
                            if ($product_exist->stock > 0) {
                                $i++;
                                ?>
                                <?= \common\components\ProductLinksWidget::widget(['id' => $product_exist->id]) ?>
                                <?php
                            }
                        }
                    }
                    if ($i == 8) {
                        break;
                    }
                }
            }
            ?>
        </div>
    </div>
</section>

<section id="discount-ad">
    <div class="self-container">
        <img src="<?= yii::$app->homeUrl; ?>uploads/cms/home-content/offer/<?= $home_contents->id ?>/large.<?= $home_contents->delivery_information ?>?<?= rand() ?>" alt="" class="img-fluid" />
    </div>
</section>

<section id="our-watches">
    <div class="container">
        <div class="main_head">
            <div class="head">Our Watches</div>
            <div class="sub-head">Best Quality Products</div>
        </div>
        <div class="row">
            <?php
            if (!empty($our_watches)) {
                $our_watches_lists = explode(',', $our_watches->product_id);

                $i = 0;
                foreach ($our_watches_lists as $our_watches_product) {
                    if (!empty($our_watches_product) && $our_watches_product != '') {
                        $product_exist = \common\models\Product::findOne($our_watches_product);
                        if (isset($product_exist)) {
                            if ($product_exist->stock > 0) {
                                $i++;
                                ?>
                                <?= \common\components\ProductLinksWidget::widget(['id' => $product_exist->id]) ?>
                                <?php
                            }
                        }
                    }
                    if ($i == 4) {
                        break;
                    }
                }
            }
            ?>
        </div>
    </div>
</section>

<section id="our-gifts">
    <div class="container">
        <div class="main_head">
            <div class="head">Our Gifts</div>
            <div class="sub-head">Best Quality Products</div>
        </div>
        <div class="row">
            <?php
            if (!empty($our_gifts)) {
                $our_gifts_lists = explode(',', $our_gifts->product_id);

                $i = 0;
                foreach ($our_gifts_lists as $our_gifts_product) {
                    if (!empty($our_gifts_product) && $our_gifts_product != '') {
                        $product_exist = \common\models\Product::findOne($our_gifts_product);
                        if (isset($product_exist)) {
                            if ($product_exist->stock > 0) {
                                $i++;
                                ?>
                                <?= \common\components\ProductLinksWidget::widget(['id' => $product_exist->id]) ?>
                                <?php
                            }
                        }
                    }
                    if ($i == 4) {
                        break;
                    }
                }
            }
            ?>
        </div>
    </div>
</section>

<section id="site-speciality">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="speciality">
                    <div class="icon"><i class="fas fa-truck"></i></div>
                    <div class="content">
                        <div class="title"><?= $home_contents->title1 ?></div>
                        <div class="info"><?= $home_contents->content1 ?></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="speciality">
                    <div class="icon"><i class="fas fa-hand-holding-usd"></i></div>
                    <div class="content">
                        <div class="title"><?= $home_contents->title1 ?></div>
                        <div class="info"><?= $home_contents->content1 ?></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="speciality">
                    <div class="icon"><i class="fas fa-user-clock"></i></div>
                    <div class="content">
                        <div class="title"><?= $home_contents->title1 ?></div>
                        <div class="info"><?= $home_contents->content1 ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
