<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\AppAsset;
use yii\widgets\ActiveForm;

AppAsset::register($this);
$action = Yii::$app->controller->id . '/' . Yii::$app->controller->action->id;
$params = $parameters = \yii::$app->getRequest()->getQueryParams();
$cart_count = common\components\Cartcount::Count();
$cart_total = common\components\Cartcount::Total();
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <meta name="robots" content="noindex,nofollow">
                    <link rel="shortcut icon" href="<?= Yii::$app->homeUrl ?>images/favicon.png">
                        <?= Html::csrfMetaTags() ?>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                        <script>
                            var homeUrl = '<?= yii::$app->homeUrl; ?>';
                        </script>
                        <title><?= Html::encode($this->title) ?></title>
                        <?php $this->head() ?>
                        </head>
                        <body>
                            <?php $this->beginBody() ?>

                            <header id="myHeader" class="header main_header"><!--header-->
                                <section class="navbar-custom" role="navigation"><!--fixed-top header-->
                                    <div class="topbar">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="top-left">
                                                        <div class="welcome-note">Best Quality Products  Almukhalatperfume</div>
                                                    </div>
                                                    <div class="top-right">
                                                        <ul>
                                                            <li class="icon shipping">Free Shipping</li>
                                                            <li class="icon returns">Free returns</li>
                                                            <li class="icon cash-delivery">Cash on delivery</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="top-navigation">
                                        <div class="center-sec">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-lg-12 sm-pad0">
                                                        <div class="menu-icon">
                                                            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown2" aria-controls="navbarNavDropdown2" aria-expanded="false" aria-label="Toggle navigation">
                                                                <div class="main-icon-bar"> <i class="fa fa-bars"></i></div>
                                                            </button>
                                                        </div>
                                                        <div class="logo-section">
                                                            <h1 class="logo">
                                                                <?= Html::a('<img src="' . yii::$app->homeUrl . 'images/logo.png" alt="Almukhalat Perfume Logo" class="img-fluid"/>', ['/site/index'], ['class' => 'navbar-brand']) ?>
                                                            </h1>
                                                        </div>
                                                        <div class="main-action">

                                                            <div class="mobile-header-Search-section">
                                                                <a href="#" class="Search-box" data-toggle="collapse" data-target="#demo1"></a>
                                                            </div>

                                                            <?= Html::beginForm(['/product/index'], 'get', ['id' => 'serach-formms', 'class' => 'search search-box product-search-box']) ?>
                                                            <div class="form-group">
                                                                <div class="input-group mx-auto">
                                                                    <input type="search" class="form-control search-keyword" id="search" placeholder="Search Products" autocomplete="off" spellcheck="false" role="combobox" aria-autocomplete="list" aria-expanded="false" dir="auto" name="Filter[keyword]" required value="<?php
                                                                    if (isset($_GET['keyword']) && $_GET['keyword'] != '') {
                                                                        echo $_GET['keyword'];
                                                                    }
                                                                    ?>" drop="search-key">
                                                                        <div class="search-keyword-dropdown search-key"></div>
                                                                        <div class="input-group-append">
                                                                            <button class="btn btn-outline-secondary" type="submit"></button>
                                                                        </div>
                                                                </div>
                                                            </div>
                                                            <?= Html::endForm() ?>


                                                            <div class="dropdown cart-dropdown">
                                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <small>My cart</small>
                                                                    <ul class="hide-mob">
                                                                        <li><a href="">( <span class="cart_count"><?= $cart_count ?></span> )</a></li>
                                                                    </ul>
                                                                </button>
                                                                <ul class="dropdown-menu  animated2 fadeInUp shopping-cart-items" aria-labelledby="dropdownMenuButton">
                                                                    <?= common\components\CartDetailWidget::widget() ?>
                                                                </ul>
                                                            </div>
                                                            <?php
                                                            if (!empty(Yii::$app->user->identity->first_name)) {
                                                                if (strlen(Yii::$app->user->identity->first_name) >= 10) {
                                                                    $name = substr(Yii::$app->user->identity->first_name, 0, 10) . '...';
                                                                    $name = ucwords($name);
                                                                } else {
                                                                    $name = Yii::$app->user->identity->first_name;
                                                                    $name = ucwords($name);
                                                                }
                                                            }
                                                            ?>
                                                            <div class="login-top ">
                                                                <?php if (!empty(Yii::$app->user->identity)) { ?>
                                                                    <a class="mob-log" href="#!"><span>login</span></a>
                                                                    <small>My account</small>
                                                                    <ul class="hide-mob">
                                                                        <li>
                                                                            <?= Html::a(ucfirst($name), ['/myaccounts/user/personal-info'], ['title' => 'My Account']) ?>
                                                                        </li>
                                                                        <?php
                                                                        echo '<li class="first">'
                                                                        . Html::beginForm(['/site/logout'], 'post') . '<a>'
                                                                        . Html::submitButton(
                                                                                '<i class="fas fa-power-off"></i>', ['class' => 'logout-btn']
                                                                        ) . '</a>'
                                                                        . Html::endForm()
                                                                        . '</li>';
                                                                        ?>
                                                                    </ul>
                                                                <?php } else { ?>
                                                                    <?= Html::a('<span>login</span>', ['/site/login-signup'], ['class' => 'mob-log']) ?>
                                                                    <small>My account</small>
                                                                    <ul class="hide-mob">
                                                                        <li>
                                                                            <?= Html::a('Login', ['/site/login-signup']) ?>
                                                                        </li>
                                                                        <li>
                                                                            <?= Html::a('Register', ['/site/signup']) ?>
                                                                        </li>
                                                                    </ul>
                                                                <?php } ?>
                                                            </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mobile-header-Search-box collapse " id="demo1" aria-expanded="true">
                                                            <div class="top-Search">
                                                                <?php
                                                                $form = ActiveForm::begin([
                                                                            'method' => 'get',
                                                                            'id' => 'serach-formms-mobile',
                                                                            'class' => 'search-box product-search-box',
                                                                            'action' => ['/product/index']
                                                                ]);
                                                                ?>
                                                                <div class="input-group">
                                                                    <div class="input-group">
                                                                        <input type="search" class="form-control search-keyword" id="mobile-search" placeholder="Search Products" autocomplete="off" spellcheck="false" role="combobox" aria-autocomplete="list" aria-expanded="false" dir="auto" name="Filter[keyword]" required value="<?php
                                                                        if (isset($_GET['keyword']) && $_GET['keyword'] != '') {
                                                                            echo $_GET['keyword'];
                                                                        }
                                                                        ?>" drop="search-key">
                                                                            <div class="search-keyword-dropdown search-key"></div>
                                                                    </div>

                                                                </div>
                                                                <?php ActiveForm::end(); ?>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="main-nav-section">
                                            <div class="container">
                                                <nav class="navbar navbar-toggleable-lg navbar-light bg-faded navbar-expand-lg">
                                                    <div class="collapse navbar-collapse" id="navbarNavDropdown2">
                                                        <ul class="navbar-nav">
                                                            <li class="nav-list <?= $action == 'site/index' ? 'active' : '' ?>">
                                                                <?= Html::a('Home', ['/site/index'], ['class' => 'link']) ?>
                                                            </li>
                                                            <li class="nav-list <?= $action == 'site/about' ? 'active' : '' ?>">
                                                                <?= Html::a('about us', ['/site/about'], ['class' => 'link']) ?>
                                                            </li>
                                                            <li class="nav-list">
                                                                <?php
                                                                $form1 = ActiveForm::begin([
                                                                            'method' => 'get',
                                                                            'id' => 'filter-search-form1',
                                                                            'action' => ['/product/index']
                                                                ]);
                                                                ?>
                                                                <input type="hidden" name="Filter[gender][]" value="1"/>
                                                                <a href="" class="link men-link">men</a>
                                                                <?php ActiveForm::end(); ?>
                                                            </li>
                                                            <li class="nav-list">
                                                                <?php
                                                                $form2 = ActiveForm::begin([
                                                                            'method' => 'get',
                                                                            'id' => 'filter-search-form2',
                                                                            'action' => ['/product/index']
                                                                ]);
                                                                ?>
                                                                <input type="hidden" name="Filter[gender][]" value="2"/>
                                                                <a href="" class="link women-link">women</a>
                                                                <?php ActiveForm::end(); ?>
                                                            </li>
                                                            <li class="nav-list">
                                                                <?php
                                                                $category1 = common\models\MainCategory::findOne(1);
                                                                $form3 = ActiveForm::begin([
                                                                            'method' => 'get',
                                                                            'id' => 'filter-search-form3',
                                                                            'action' => ['/product/index']
                                                                ]);
                                                                ?>
                                                                <input type="hidden" name="Filter[category]" value="<?= $category1->canonical_name ?>"/>
                                                                <a href="" class="link category1-link "><?= $category1->main_category ?></a>
                                                                <?php ActiveForm::end(); ?>
                                                            </li>
                                                            <li class="nav-list">
                                                                <?php
                                                                $category2 = common\models\MainCategory::findOne(2);
                                                                $form4 = ActiveForm::begin([
                                                                            'method' => 'get',
                                                                            'id' => 'filter-search-form4',
                                                                            'action' => ['/product/index']
                                                                ]);
                                                                ?>
                                                                <input type="hidden" name="Filter[category]" value="<?= $category2->canonical_name ?>"/>
                                                                <a href="" class="link category2-link "><?= $category2->main_category ?></a>
                                                                <?php ActiveForm::end(); ?>
                                                            </li>
                                                            <li class="nav-list">
                                                                <?php
                                                                $category3 = common\models\MainCategory::findOne(3);
                                                                $form5 = ActiveForm::begin([
                                                                            'method' => 'get',
                                                                            'id' => 'filter-search-form5',
                                                                            'action' => ['/product/index']
                                                                ]);
                                                                ?>
                                                                <input type="hidden" name="Filter[category]" value="<?= $category3->canonical_name ?>"/>
                                                                <a href="" class="link category3-link "><?= $category3->main_category ?></a>
                                                                <?php ActiveForm::end(); ?>
                                                            </li>
                                                            <li class="nav-list">
                                                                <?php
                                                                $category4 = common\models\MainCategory::findOne(4);
                                                                $form6 = ActiveForm::begin([
                                                                            'method' => 'get',
                                                                            'id' => 'filter-search-form6',
                                                                            'action' => ['/product/index']
                                                                ]);
                                                                ?>
                                                                <input type="hidden" name="Filter[category]" value="<?= $category4->canonical_name ?>"/>
                                                                <a href="" class="link category4-link "><?= $category4->main_category ?></a>
                                                                <?php ActiveForm::end(); ?>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <div class="clearfix"></div>
                            </header>
                            <?= $content ?>
                            <footer>
                                <div class="sec1">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-4 col-sm-6">
                                                <div class="foot-logo">
                                                    <img src="<?= yii::$app->homeUrl; ?>images/foot-logo.png" alt="Al mukhalat perfume logo" class="img-fluid"/>
                                                </div>
                                            </div>
                                            <div class="col-md-8 col-sm-6">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="hide-mob phone"><a href="tel:+971 565092957" class="social"><span>Phone No</span> +971 565092957</a></div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="hide-mob"><a href="mailto:almukhalatperfume@gmail.com" class="social"><span>Email:</span> almukhalatperfume@gmail.com</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="sec2">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="newsleter-msg">
                                                    <div class="title">Sign up for  Newsletter</div>
                                                    <div class="info">
                                                        Subscribe to our newsletter and stay updated on the
                                                        exclusive deals and special offers!
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <form class="newsleter" action="" method="post" id="subscribe-mail">
                                                    <input type="email" id="subscribe_email" placeholder="Enter your Email Address" required="">
                                                        <input type="submit" value="Subscribe" class="subscribe-btn">
                                                            </form>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            <div class="sec3">
                                                                <div class="container">
                                                                    <div class="row">
                                                                        <div class="col-lg-3 col-md-3 col-sm-6">
                                                                            <h5 class="head">INFORMATION</h5>
                                                                            <ul class="foot-link">
                                                                                <li><a href="#!">About Us</a></li>
                                                                                <li><a href="#!">Customer Service</a></li>
                                                                                <li><a href="#!">Delivery Information</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="col-lg-3 col-md-3 col-sm-6">
                                                                            <h5 class="head">CUSTOMER SERVICE</h5>
                                                                            <ul class="foot-link">
                                                                                <li><a href="#!">Contact</a></li>
                                                                                <li><a href="#!">Return</a></li>
                                                                                <li><a href="#!">Site map</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="col-lg-3 col-md-3 col-sm-6">
                                                                            <h5 class="head">MY ACCOUNT</h5>
                                                                            <ul class="foot-link">
                                                                                <li><a href="#!">My Orders</a></li>
                                                                                <li><a href="#!">My Addresses</a></li>
                                                                                <li><a href="#!">Wish Lists</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="col-lg-3 col-md-3 col-sm-6">
                                                                            <h5 class="head">Policies</h5>
                                                                            <ul class="foot-link">
                                                                                <li><a href="#!">Privacy Policy</a></li>
                                                                                <li><a href="#!">Terms & Conditions</a></li>
                                                                                <li><a href="#!">Return Policy</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="copyright">
                                                                <div class="container">
                                                                    <p>Copyright © <?= date('Y') ?> <span>Almukhalatperfume.</span> All Rights Reserved</p>
                                                                    <ul class="social-icon">
                                                                        <li><a class="fab fa-facebook-f" target="_blank" href="#!"></a></li>
                                                                        <li><a class="fab fa-twitter" target="_blank" href="#!"></a></li>
                                                                        <li><a class="fab fa-linkedin-in" target="_blank" href="#!"></a></li>
                                                                        <li><a class="fab fa-youtube" target="_blank" href="#!"></a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>

                                                            </footer>
                                                            <!--footer-->
                                                            <a href="#" class="scrollup" >Scroll</a> <!--Scroll-->
                                                            <?php $this->endBody() ?>
                                                            </body>
                                                            </html>
                                                            <?php $this->endPage() ?>
                                                            <script>
                                                                $(document).ready(function () {
                                                                    $(document).on('submit', '#email-subscription', function (e) {
                                                                        e.preventDefault();

                                                                        $.ajax({
                                                                            type: "POST",
                                                                            url: '<?= Yii::$app->homeUrl; ?>site/subscribe-mail',
                                                                            data: {email: $('#newsletter-email').val()},
                                                                            success: function (data)
                                                                            {
                                                                                if (data == 0) {
                                                                                    $('#after-sbscribe').after('<div id="email-alert" style="font-size: 12px;padding-left: 25px;color: greenyellow;position: absolute;">This Email is Already Subscribed</div>');
                                                                                } else {
                                                                                    $('#after-sbscribe').after('<div id="email-alert" style="font-size: 12px;padding-left: 25px;color: greenyellow;position: absolute;">Your Email Subscription Send Successfully</div>');
                                                                                }
                                                                                $('#newsletter-email').val('');
                                                                                $('#email-alert').delay(1000).fadeOut('slow');
                                                                            }
                                                                        });
                                                                    });

                                                                    $('.men-link').click(function () {
                                                                        $("#filter-search-form1").submit();
                                                                    });

                                                                    $('.women-link').click(function () {
                                                                        $("#filter-search-form2").submit();
                                                                    });

                                                                    $('.category1-link').click(function () {
                                                                        $("#filter-search-form3").submit();
                                                                    });
                                                                    $('.category2-link').click(function () {
                                                                        $("#filter-search-form4").submit();
                                                                    });
                                                                    $('.category3-link').click(function () {
                                                                        $("#filter-search-form5").submit();
                                                                    });
                                                                    $('.category4-link').click(function () {
                                                                        $("#filter-search-form6").submit();
                                                                    });

                                                                });
                                                            </script>

