<?php

namespace frontend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\User;
use common\models\ForgotPasswordTokens;
use frontend\models\SignupForm;
use frontend\models\LoginForm;
use common\models\Slider;
use common\models\Subscribe;
use common\models\ContactUs;
use common\models\Principals;
use common\models\About;
use common\models\ContactPage;
use common\models\CmsMetaTags;
use common\models\ProductListing;

/**
 * Site controller
 */
class SiteController extends Controller {

    /**
     * @inheritdoc
     */
//    public password;

    public function behaviors() {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup', 'login-signup', 'product-detail', 'our-products', 'verification', 'send-response-mail', 'subscribe-mail'],
                'rules' => [
                    [
                        'actions' => ['signup', 'login-signup', 'product-detail', 'our-products', 'verification', 'send-response-mail', 'subscribe-mail'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout', 'signup', 'login-signup', 'product-detail', 'our-products', 'verification', 'send-response-mail', 'subscribe-mail'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex() {
        $sliders = Slider::find()->where(['status' => 1])->all();
        $our_perfumes = ProductListing::findOne(1);
        $our_watches = ProductListing::findOne(2);
        $our_gifts = ProductListing::findOne(3);
        $meta_tags = CmsMetaTags::find()->where(['id' => 1])->one();
        $home_contents = \common\models\CommonContents::findOne(1);
        $our_categories = \common\models\OurCategories::find()->all();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('index', [
                    'sliders' => $sliders,
                    'our_perfumes' => $our_perfumes,
                    'our_watches' => $our_watches,
                    'our_gifts' => $our_gifts,
                    'meta_title' => $meta_tags->meta_title,
                    'home_contents' => $home_contents,
                    'our_categories' => $our_categories,
        ]);
    }

    /**
     * Displays About Page.
     *
     * @return mixed
     */
    public function actionAbout() {

        $about = About::find()->where(['id' => 1])->one();
        $meta_tags = CmsMetaTags::find()->where(['id' => 1])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('about', [
                    'about' => $about,
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    /**
     * Displays Store Locator Page .
     *
     * @return mixed
     */
    public function actionStoreLocator() {
        $meta_tags = CmsMetaTags::find()->where(['id' => 4])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('store-locator', [
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    /**
     * Displays Contact Page.
     *
     * @return mixed
     */
    public function actionContact() {
        $status = '';
        $model = new ContactUs();
        $contact = ContactPage::findOne(1);
        $meta_tags = CmsMetaTags::find()->where(['id' => 7])->one();
        $branches = \common\models\Branches::find()->where(['status' => 1])->orderBy(['id' => SORT_DESC])->all();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);

        if ($model->load(Yii::$app->request->post())) {
            if ($model->save(FALSE)) {
                $status = 1;
                Yii::$app->getSession()->setFlash('success', 'Enquiry submitted successfully');
                //$this->sendContactMail($model);
            }
        }
        return $this->render('contact', [
                    'contact' => $contact,
                    'model' => $model,
                    'status' => $status,
                    'meta_title' => $meta_tags->meta_title,
                    'branches' => $branches,
        ]);
    }

    /**
     * Displays Login Page.
     *
     * @return mixed
     */
    public function actionLoginSignup($go = NULL) {
        if (!Yii::$app->user->isGuest) {
            $this->redirect(['/site/index']);
        }
        $model_login = new LoginForm();
        $meta_tags = CmsMetaTags::find()->where(['id' => 16])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        if ($model_login->load(Yii::$app->request->post()) && $model_login->login()) {
            Yii::$app->session['log-return'] = '';
            if (empty($go)) {
                return $this->redirect(Yii::$app->request->referrer);
            }
            return $this->redirect($go);
        } else {
            Yii::$app->session['log-return'] = 1;
        }
        return $this->render('login-signup', [
                    'model_login' => $model_login,
                    'meta_title' => $meta_tags->meta_title,
                    'go' => $go,
        ]);
    }

    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup($go = NULL) {
        $model = new SignupForm();
        $meta_tags = CmsMetaTags::find()->where(['id' => 13])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($user = $model->signup()) {
                //$this->sendResponseMail($model);
                if (Yii::$app->getUser()->login($user)) {
                    $this->Emailregister($user);
                    $this->Emailverification($user);
                    if ($go) {
                        return $this->redirect($go);
                    } else {
                        return $this->goHome();
                    }
                }
            }
        }return $this->render('signup', [
                    'model' => $model,
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    /**
     * After successful registration send message to the user
     *
     * @return mixed
     */
    public function Emailregister($user) {
        $message = Yii::$app->mailer->compose('new_registration', ['user' => $user])
                ->setFrom('info@coralepitome.com')
                ->setTo(Yii::$app->params['adminEmail'])
                ->setSubject('New User Registration');
        $message->send();
    }

    /**
     * After successful registration send email verification link to the user
     *
     * @return mixed
     */
    public function Emailverification($user) {
        $token = $user->id . '_' . 123456;
        $val = base64_encode($token);

        $message = Yii::$app->mailer->compose('email_varification', ['model' => $user, 'val' => $val]) // a view rendering result becomes the message body here
                ->setFrom('info@coralepitome.com')
                ->setTo($user->email, $val)
                ->setSubject('Email Verification');
        $message->send();
        return TRUE;
    }

    /**
     * Email Verification for new user
     *
     * @return mixed
     */
    public function actionVerification($verify) {
        $data = base64_decode($verify);
        $values = explode('_', $data);

        $model = User::find()->where(['id' => $values[0]])->one();

        if (!empty($model)) {
            $model->email_verification = 1;
            $model->save();
            return $this->redirect(array('site/login'));
        } else {
            return $this->redirect(array('site/index'));
        }
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout() {
        Yii::$app->user->logout();
        Yii::$app->session['orderid'] = '';
        return $this->goHome();
    }

    public function actionTermsAndConditions() {
        $model = Principals::findOne(1);
        $meta_tags = CmsMetaTags::find()->where(['id' => 9])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('terms_condition', [
                    'model' => $model,
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    public function actionPrivacyPolicy() {
        $model = Principals::findOne(1);
        $meta_tags = CmsMetaTags::find()->where(['id' => 11])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('privacy_policy', [
                    'model' => $model,
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    public function actionReturnPolicy() {
        $model = Principals::findOne(1);
        $meta_tags = CmsMetaTags::find()->where(['id' => 9])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('return_policy', [
                    'model' => $model,
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    public function actionDeliveryInformation() {
        $model = Principals::findOne(1);
        $meta_tags = CmsMetaTags::find()->where(['id' => 12])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('delivery_information', [
                    'model' => $model,
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    public function actionFaq() {
        $model = Principals::findOne(1);
        $meta_tags = CmsMetaTags::find()->where(['id' => 12])->one();
        \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
        \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        return $this->render('faq', [
                    'model' => $model,
                    'meta_title' => $meta_tags->meta_title,
        ]);
    }

    public function actionForgot() {
//        $this->layout = 'adminlogin';
        $model = new User();
        if ($model->load(Yii::$app->request->post())) {

            $check_exists = User::find()->where(['email' => $model->email])->one();
            if (!empty($check_exists)) {

                $token_value = $this->tokenGenerator();
                $token = $check_exists->id . '_' . $token_value;
                $val = yii::$app->EncryptDecrypt->Encrypt('encrypt', $token);
                $token_model = new ForgotPasswordTokens();
                $token_model->user_id = $check_exists->id;
                $token_model->token = $token_value;
                $token_model->save();
                $this->sendMail($val, $check_exists);
                Yii::$app->getSession()->setFlash('success', 'A verification email has been sent to ' . $check_exists->email . ', please check the spam box if you can not find the mail in your inbox. ');
                // return $this->redirect(['login-signup']);
            } else {
                Yii::$app->getSession()->setFlash('error', 'Invalid Email');
            }
            return $this->render('forgot-password', [
                        'model' => $model,
            ]);
        } else {
            return $this->render('forgot-password', [
                        'model' => $model,
            ]);
        }
    }

    public function tokenGenerator() {

        $length = rand(1, 1000);
        $chars = array_merge(range(0, 9));
        shuffle($chars);
        $token = implode(array_slice($chars, 0, $length));
        return $token;
    }

    public function sendMail($val, $model) {
        $subject = 'Change Password';
        $to = $model->email;
        $message = $this->renderPartial('forgot_mail', [
            'model' => $model,
            'val' => $val,
        ]);
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
        $headers .= 'From: <info@coralepitome.com>' . "\r\n";
        mail($to, $subject, $message, $headers);
        return TRUE;
    }

    public function actionNewPassword($token) {
        $data = yii::$app->EncryptDecrypt->Encrypt('decrypt', $token);
        $values = explode('_', $data);
        $token_exist = ForgotPasswordTokens::find()->where("user_id = " . $values[0] . " AND token = " . $values[1])->one();
        if (!empty($token_exist)) {
            $model = User::find()->where("id = " . $token_exist->user_id)->one();
            $model_form = new \frontend\models\ForgotPassword();
            if ($model_form->load(Yii::$app->request->post()) && $model_form->validate()) {
                $model->password_hash = Yii::$app->security->generatePasswordHash($model_form->confirm_password);
                $model->update();
                $token_exist->delete();
                Yii::$app->getSession()->setFlash('success', 'Password changed successfully. Please login!');
                return $this->redirect(['login-signup']);
            }
            return $this->render('new-password', [
                        'model' => $model,
                        'model_form' => $model_form
            ]);
        } else {
//			Yii::$app->getSession()->setFlash('error', 'Password Token not Found');
            $this->redirect('error');
        }
    }

    public function actionSubscribeMail() {
        if (Yii::$app->request->isAjax) {
            $email = $_POST['email'];
            if (!empty($email)) {
                $model = new \common\models\Subscribe();
                $model->email = $email;
                $model->date = date('Y-m-d');
                $exist = \common\models\Subscribe::find()->where(['email' => $email])->one();
                if (empty($exist)) {
                    if ($model->save()) {
                        $subject = 'Newsletter Subscription Enquiry From Al Mukhalat Perfume';
                        $to = "manu@azryah.com";
                        $message = $this->renderPartial('subscribe-mail', ['email' => $email,]);
                        $headers = "MIME-Version: 1.0" . "\r\n";
                        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
                        $headers .= 'From: <info@coralepitome.com>' . "\r\n";
                        mail($to, $subject, $message, $headers);
                        echo 1;
                        exit;
                    }
                } else {
                    echo 0;
                    exit;
                }
            }
        }
    }

    public function actionBranches() {
        $branches = \common\models\Branches::find()->where(['status' => 1])->orderBy(['id' => SORT_DESC])->all();
        return $this->render('branches', ['branches' => $branches]);
    }

}
