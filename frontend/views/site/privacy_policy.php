<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

if (isset($meta_title) && $meta_title != '')
    $this->title = $meta_title;
else
    $this->title = 'Privacy Policy';
?>

<div id="about-page" class="inner-page">

    <section class="breadcrumb">
        <div class="container">
            <ul>
                <li><?= Html::a('Home', ['/site/index']) ?></li>
                <li class="current"><a href="">Privacy Policy</a></li>
            </ul>
        </div>
    </section>

    <section id="about" class="policies">
        <div class="container">
            <div class="heading">PRIVACY POLICIES</div>
            <div class="content">
                <?= $model->privacy_policy ?>
            </div>
        </div>
    </section>
</div>