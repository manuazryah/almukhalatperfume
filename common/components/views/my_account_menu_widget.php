<?php

use yii\helpers\Html;

$account_action = Yii::$app->controller->id . '/' . Yii::$app->controller->action->id;
?>
<div class="my-account-category">
    <div class="account-top-details">
        <div class="img-box"><img src="<?= Yii::$app->homeUrl ?>images/icons/account-img.png" width="66" height="66"></div>
        <h2 class="account-name"><?= Yii::$app->user->identity->first_name ?></h2>
        <h3 class="account-mail"><?= Yii::$app->user->identity->email ?></h3>
    </div>
    <div class="category-list">
        <ul>
            <li class="<?= $account_action == 'my-orders/index' ? 'active' : '' ?>"><?= Html::a('My Orders', ['/myaccounts/my-orders/index']) ?></li>
            <li class="<?= $account_action == 'user/user-address' ? 'active' : '' ?>"><?= Html::a('Shipping Addresses', ['/myaccounts/user/user-address']) ?></li>
            <li class="<?= $account_action == 'user/wish-list' ? 'active' : '' ?>"><?= Html::a('Wish Lists', ['/myaccounts/user/wish-list']) ?></li>
            <li class="<?= $account_action == 'user/personal-info' ? 'active' : '' ?>"><?= Html::a('Account Settings', ['/myaccounts/user/personal-info']) ?></li>
        </ul>
    </div>
</div>