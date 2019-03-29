<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

if (isset($meta_title) && $meta_title != '')
    $this->title = $meta_title;
else
    $this->title = 'About';
?>

<div id="about-page" class="inner-page">

    <section class="breadcrumb">
        <div class="container">
            <ul>
                <li><?= Html::a('Home', ['/site/index']) ?></li>
                <li class="current"><a href="">About us</a></li>
            </ul>
        </div>
    </section>

    <section id="about">
        <div class="container">
            <div class="heading"><?= $about->title ?></div>
            <div class="highlight-info">
                <p><?= $about->description ?></p>
            </div>
            <div class="content">
                <div class="img-box">
                    <img src="<?= Yii::$app->homeUrl; ?>images/about.jpg" alt="Al Mukhalat perfume" class="img-fluid"/>
                </div>
                <?= $about->detailed_description ?>
            </div>
        </div>
    </section>

    <section id="vision-mission">
        <div class="container">
            <div class="row">
                <div class="col-md-6 box">
                    <div class="icon"><img src="<?= Yii::$app->homeUrl; ?>images/icons/vision_icon.png" class="img-fluid" alt=""/></div>
                    <div class="title">Our VISION</div>
                    <div class="info">
                        <?= $about->vision ?>
                    </div>
                </div>
                <div class="col-md-6 box mission">
                    <div class="icon"><img src="<?= Yii::$app->homeUrl; ?>images/icons/mission-icon.png" class="img-fluid" alt=""/></div>
                    <div class="title">Our mission</div>
                    <div class="info">
                        <?= $about->mission ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="testimonial">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mauto">
                    <div id="lastWord" class="testi-info">
                        <?= $about->quotation ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>