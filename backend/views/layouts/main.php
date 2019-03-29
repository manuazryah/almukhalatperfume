<?php
/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="<?= yii::$app->homeUrl; ?>images/favicon.png">
        <?= Html::csrfMetaTags() ?>
        <title>Almukhalat Perfume</title>
        <script src="<?= yii::$app->homeUrl; ?>/js/jquery-1.11.1.min.js"></script>
        <script>
            var homeUrl = '<?= yii::$app->homeUrl; ?>';
        </script>
        <?php $this->head() ?>
    </head>
    <body>
        <?php $this->beginBody() ?>

    <body class="page-body">



        <div class="page-container"><!-- add class "sidebar-collapsed" to close sidebaowered By Azryah Networksr by default, "chat-visible" to make chat appear always -->

            <!-- Add "fixed" class to make the sidebar fixed always to the broowered By Azryah Networkswser viewport. -->
            <!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
            <!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
            <div class="sidebar-menu toggle-others fixed">

                <div class="sidebar-menu-inner">

                    <header class="logo-env" >

                        <!-- logo -->
                        <div class="logo">
                            <a href="<?= yii::$app->homeUrl; ?>" class="logo-expanded">
                                <img class="img-responsive" src="<?= yii::$app->homeUrl; ?>images/logo.png" alt="logo" />
                            </a>

                            <a href="<?= yii::$app->homeUrl; ?>" class="logo-collapsed">
                                <img class="img-responsive" src="<?= yii::$app->homeUrl; ?>images/favicon.png" alt="logo" width="44" />
                            </a>
                        </div>
                        <!-- This will toggle the mobile menu and will be visible only on mobile devices -->
                        <div class="mobile-menu-toggle visible-xs">
                            <a href="#" data-toggle="user-info-menu">
                                <i class="fa-bell-o"></i>
                                <span class="badge badge-success">0</span>
                            </a>

                            <a href="#" data-toggle="mobile-menu">
                                <i class="fa-bars"></i>
                            </a>
                        </div>


                    </header>



                    <ul id="main-menu" class="main-menu">
                        <!-- add class "multiple-expanded" to allow multiple submenus to open -->
                        <!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
                        <?php if (Yii::$app->session['post']['admin'] == 1) { ?>
                            <li class="">
                                <a href="#">
                                    <i class="fa fa-cog"></i>
                                    <span class="title">Admin</span>
                                </a>
                                <ul>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Admin Post', ['/admin/admin-post/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Admin User', ['/admin/admin-users/index'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>
                        <?php } ?>

                        <?php if (Yii::$app->session['post']['product'] == 1) { ?>

                            <li>
                                <a href="layout-variants.html">
                                    <i class="fa fa-desktop"></i>
                                    <span class="title">Products</span>
                                </a>
                                <ul>
                                    <li>
                                        <a href="extra-icons-fontawesome.html"><i class="fa fa-circle-o"></i>
                                            <span class="title">Master</span>
                                        </a>
                                        <ul>
                                            <li>
                                                <?= Html::a('<i class="fa fa-angle-double-right"></i>Search Tag', ['/product/master-search-tag/index'], ['class' => 'title']) ?>
                                            </li>
                                            <li>
                                                <?= Html::a('<i class="fa fa-angle-double-right"></i>Brand', ['/brand/index'], ['class' => 'title']) ?>
                                            </li>
                                            <li>
                                                <?= Html::a('<i class="fa fa-angle-double-right"></i>Fragrance', ['/fregrance/index'], ['class' => 'title']) ?>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Product', ['/product/product/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Create Product', ['/product/product/create'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>
                        <?php } ?>

                        <?php if (Yii::$app->session['post']['admin'] == 1) { ?>
                            <li>
                                <a href="#">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="title">Masters</span>
                                </a>
                                <ul>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Unit', ['/product/unit/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Currency', ['/product/currency/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Country Code', ['/product/country-code/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Emirates', ['/emirates'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="<?= yii::$app->homeUrl; ?>settings">
                                    <i class="fa fa-star"></i>
                                    <span class="title">Settings</span>
                                </a>
                            </li>

                            <li>
                                <a href="">
                                    <i class="fa fa-user"></i>
                                    <span class="title">Users</span>
                                </a>
                                <ul>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Users', ['/user/user/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Reviews', ['/user/customer-reviews/index'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>



                            <li>
                                <a href="">
                                    <i class="fa-pie-chart"></i>
                                    <span class="title">CMS</span>
                                </a>
                                <ul>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Home Contents', ['/cms/common-contents/update', 'id' => 1], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>About Page', ['/cms/about/update?id=1'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Slider', ['/cms/slider/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Product Listing', ['/cms/product-listing/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Our Categories', ['/cms/our-categories/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Meta Tags', ['/cms/cms-meta-tags/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Terms & Conditions', ['/cms/principals/terms-conditions'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Privacy Policy', ['/cms/principals/privacy-policy'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Delivery Information', ['/cms/principals/delivery-information'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>FAQ', ['/cms/principals/faq'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Return Policy', ['/cms/principals/return-policy'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="">
                                    <i class="fa fa-envelope"></i>
                                    <span class="title">Contact Us</span>
                                </a>
                                <ul>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Subscribe', ['/contacts/subscribe/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Contact Us', ['/contacts/contact-us/index'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="title">Orders</span>
                                </a>
                                <ul>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Success Order', ['/order/order-master/index'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Failed Order', ['/order/order-master/failed-order'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <?= Html::a('<i class="fa fa-backward"></i><span class="title">Return Order</span>', ['/order/order-master/return'], ['class' => 'title']) ?>
                            </li>
                            <li>
                                <?= Html::a('<i class="fa fa-camera-retro"></i><span class="title">Cancelled Order</span>', ['/order/order-master/user-cancel'], ['class' => 'title']) ?>
                            </li>

                            <li>
                                <?= Html::a('<i class="fa fa-cube"></i><span class="title">Promotions</span>', ['/promotions/promotions/index'], ['class' => 'title']) ?>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-bars"></i>
                                    <span class="title">Reports</span>
                                </a>
                                <ul>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Product Wise Report', ['/order/order-master/product-wise-report'], ['class' => 'title']) ?>
                                    </li>
                                    <li>
                                        <?= Html::a('<i class="fa fa-circle-o"></i>Order Wise Report', ['/order/order-master/order-report'], ['class' => 'title']) ?>
                                    </li>
                                </ul>
                            </li>
                        <?php } ?>
                    </ul>

                </div>

            </div>
            <div class="main-content">

                <nav class="navbar user-info-navbar"  role="navigation"><!-- User Info, Notifications and Menu Bar -->

                    <!-- Left links for user info navbar -->
                    <ul class="user-info-menu left-links list-inline list-unstyled">

                        <li class="hidden-sm hidden-xs">
                            <a href="#" data-toggle="sidebar">
                                <i class="fa-bars"></i>
                            </a>
                        </li>
                        <?php
                        $notifications = common\models\Notification::find()->where(['status' => 0])->orderBy(['id' => SORT_DESC])->all();
                        ?>
                        <li class="dropdown hover-line">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa-bell-o"></i>
                                <span class="badge badge-purple notify-counts"><?= count($notifications); ?></span>
                            </a>

                            <ul class="dropdown-menu notifications">
                                <li class="top">
                                    <p class="small">
                                        You have <strong class="notify-counts"><?= count($notifications); ?></strong> new notifications.
                                    </p>
                                </li>

                                <li>
                                    <ul class="dropdown-menu-list list-unstyled ps-scrollbar dropdown-menu-list-notify">
                                        <?php foreach ($notifications as $value) { ?>
                                            <li class="active notification-success" id="notify-<?= $value->id ?>">
                                                <a>
                                                    <span class="line notification-line" style="width: 85%;padding-left: 0;cursor: pointer;" id="<?= $value->order_id ?>">
                                                        <strong style="line-height: 20px;"><?= $value->content ?></strong>
                                                    </span>

                                                    <span class="line small time" style="padding-left: 0;">
                                                        <?= $value->date ?>
                                                    </span>
                                                    <input type="checkbox" checked="" class="iswitch iswitch-secondary disable-notification" data-id= "<?= $value->id ?>" style="margin-top: -35px;float: right;" title="Ignore">
                                                </a>
                                            </li>
                                        <?php }
                                        ?>
                                    </ul>
                                </li>

                                <li class="external">
                                    <?= Html::a('<span>View all notifications</span> <i class="fa-link-ext"></i>', ['/notifications/notification']) ?>
                                </li>
                            </ul>
                        </li>



                    </ul>


                    <!-- Right links for user info navbar -->
                    <ul class="user-info-menu right-links list-inline list-unstyled">

                        <li>
                            <a href="<?= Yii::$app->homeUrl; ?>site/home"><i class="fa-home"></i> Home</a>
                        </li>
                        <li class="">
                            <?php
                            echo ''
                            . Html::beginForm(['/site/logout'], 'post', ['style' => '']) . '<a>'
                            . Html::submitButton(
                                    '<i class="fa fa-sign-out" aria-hidden="true"></i> Sign out', ['class' => 'signout-btn', 'style' => '']
                            ) . '</a>'
                            . Html::endForm()
                            . '';
                            ?>
                        </li>
                    </ul>

                </nav>

                <?= Alert::widget() ?>
                <?= $content ?>

                <!-- Main Footer -->
                <!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
                <!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
                <!-- Or class "fixed" to  always fix the footer to the end of page -->
                <footer class="main-footer sticky footer-type-1">

                    <div class="footer-inner">

                        <!-- Add your copyright text here -->
                        <div class="footer-text">
                            &copy; 2019
                            All Rights Reserved. Powered By Epitome
                        </div>


                        <!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
                        <div class="go-up">

                            <a href="#" rel="go-top">
                                <i class="fa-angle-up"></i>
                            </a>

                        </div>

                    </div>

                </footer>
            </div>

            <!--    </div>
            </div>-->

            <div class="footer-sticked-chat"><!-- Start: Footer Sticked Chat -->

                <script type="text/javascript">
                    function toggleSampleChatWindow()
                    {
                        var $chat_win = jQuery("#sample-chat-window");

                        $chat_win.toggleClass('open');

                        if ($chat_win.hasClass('open'))
                        {
                            var $messages = $chat_win.find('.ps-scrollbar');

                            if ($.isFunction($.fn.perfectScrollbar))
                            {
                                $messages.perfectScrollbar('destroy');

                                setTimeout(function () {
                                    $messages.perfectScrollbar();
                                    $chat_win.find('.form-control').focus();
                                }, 300);
                            }
                        }

                        jQuery("#sample-chat-window form").on('submit', function (ev)
                        {
                            ev.preventDefault();
                        });
                    }

                    jQuery(document).ready(function ($)
                    {
                        $(".footer-sticked-chat .chat-user, .other-conversations-list a").on('click', function (ev)
                        {
                            ev.preventDefault();
                            toggleSampleChatWindow();
                        });

                        $(".mobile-chat-toggle").on('click', function (ev)
                        {
                            ev.preventDefault();

                            $(".footer-sticked-chat").toggleClass('mobile-is-visible');
                        });

                        $('.disable-notification').on('change', function (e) {
                            var idd = $(this).attr('data-id');
                            var count = $('#notify-count').text();
                            $.ajax({
                                type: 'POST',
                                cache: false,
                                async: false,
                                data: {id: idd},
                                url: '<?= Yii::$app->homeUrl; ?>notifications/notification/update-notification',
                                success: function (data) {
                                    $(".hover-line-notify").addClass("open");
                                    var res = $.parseJSON(data);
                                    $('#notify-' + idd).fadeOut(750, function () {
                                        $(this).remove();
                                    });
                                    $('.notify-counts').text(res.result["notificationcount"]);
                                    $(".dropdown-menu-list-notify").html(res.result["notification-list"]);
                                    e.preventDefault();
                                }
                            });
                        });
                    });
                </script>



                <a href="#" class="mobile-chat-toggle">
                    <i class="linecons-comment"></i>
                    <span class="num">6</span>
                    <span class="badge badge-purple">4</span>
                </a>

                <!-- End: Footer Sticked Chat -->
            </div>



            <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>
