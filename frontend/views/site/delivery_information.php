<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

if (isset($meta_title) && $meta_title != '')
    $this->title = $meta_title;
else
    $this->title = 'Delivery Information';
?>

<div id="about-page" class="inner-page">

    <section class="breadcrumb">
        <div class="container">
            <ul>
                <li><?= Html::a('Home', ['/site/index']) ?></li>
                <li class="current"><a href="">Delivery Information</a></li>
            </ul>
        </div>
    </section>

    <section id="about" class="policies">
        <div class="container">
            <div class="heading">Delivery Information</div>
            <div class="content">
                <?= $model->delivery_information ?>
            </div>
        </div>
    </section>
</div>