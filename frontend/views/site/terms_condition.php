<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

if (isset($meta_title) && $meta_title != '')
    $this->title = $meta_title;
else
    $this->title = 'Terms & Conditions';
?>

<div id="about-page" class="inner-page">

    <section class="breadcrumb">
        <div class="container">
            <ul>
                <li><?= Html::a('Home', ['/site/index']) ?></li>
                <li class="current"><a href="">Terms & Conditions</a></li>
            </ul>
        </div>
    </section>

    <section id="about" class="policies">
        <div class="container">
            <div class="heading">Terms & Conditions</div>
            <div class="content">
                <?= $model->terms_conditions ?>
            </div>
        </div>
    </section>
</div>