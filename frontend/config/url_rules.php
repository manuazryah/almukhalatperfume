<?php

return [
    '' => 'site/index',
    'about' => 'site/about',
    'feedback' => 'site/contact',
    'forgot-password' => 'site/forgot',
    'blog' => 'site/blog',
    'login' => 'site/login-signup',
    'signup' => 'site/signup',
    'terms-and-conditions' => 'site/terms-and-conditions',
    'privacy-policy' => 'site/privacy-policy',
    'delivery-information' => 'site/delivery-information',
    'return-policy' => 'site/return-policy',
    'contact' => 'site/contact',
    'faq' => 'site/faq',
    'view-cart' => 'cart/mycart',
    'checkout' => 'cart/checkout',
    'check-out' => 'checkout/checkout',
    'confirm-order' => 'checkout/confirm',
    'my-account' => 'myaccounts/user/index',
    'my-orders' => 'myaccounts/my-orders/index',
    'my-reviews' => 'myaccounts/user/my-reviews',
    'personal-info' => 'myaccounts/user/personal-info',
    'change-password' => 'myaccounts/user/change-password',
    'adresses' => 'myaccounts/user/user-address',
    'wish-list' => 'myaccounts/user/wish-list',
    'contact-info' => 'myaccounts/user/update-contact-info',
    'detail/<id>' => 'site/blog-detail',
    'blogs' => 'site/our-blog',
    'product/<type>/<category>' => 'product/index',
//    'product/<category>' => 'product/index',
    'product-detail/<product:\w+(-\w+)*>' => 'product/product-detail',
];
