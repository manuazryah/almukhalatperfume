<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

if (isset($meta_title) && $meta_title != '')
    $this->title = $meta_title;
else
    $this->title = 'FAQ';
?>

<div id="about-page" class="inner-page">

    <section class="breadcrumb">
        <div class="container">
            <ul>
                <li><?= Html::a('Home', ['/site/index']) ?></li>
                <li class="current"><a href="">FAQ</a></li>
            </ul>
        </div>
    </section>

    <section id="about" class="policies">
        <div class="container">
            <div class="heading">FAQ</div>
            <div class="content">
                <?= $model->faq ?>
            </div>
        </div>
    </section>
</div>