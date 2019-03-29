<?php

namespace frontend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\helpers\Json;
use yii\db\Expression;
use common\models\CreateYourOwn;
use common\models\WishList;
use yii\web\UploadedFile;

class AjaxController extends \yii\web\Controller {

    public function beforeAction($action) {
        $this->enableCsrfValidation = false;
        return parent::beforeAction($action);
    }

    public function actionIndex() {
        return $this->render('index');
    }

    /*
     * This function select Country code based on the country id
     * return result to the view
     */

    public function actionCountrycode() {

        if (Yii::$app->request->isAjax) {
            $country_id = $_POST['country_id'];
            if ($country_id == '') {
                echo '0';
                exit;
            } else {
                $country_code = \common\models\CountryCode::find()->where(['id' => $country_id])->one();
                if (empty($country_code)) {
                    echo '0';
                    exit;
                } else {

                    echo $country_code->id;
                    exit;
                }
            }
        }
    }

    /*
     * This function select chek email id	 * return result to the view
     */

    public function actionEmailUnique() {

        if (Yii::$app->request->isAjax) {
            $email = $_POST['email'];
            if ($email == '') {
                echo '0';
                exit;
            } else {
                $data = \common\models\User::find()->where(['email' => $email])->one();
                if (!empty($data)) {
                    echo 0;
                    exit;
                } else {
                    echo 1;
                    exit;
                }
            }
        }
    }

    /*
     * This function select chek email id	 * return result to the view
     */

    public function actionUserUnique() {

        if (Yii::$app->request->isAjax) {
            $username = $_POST['username'];
            if ($email == '') {
                echo '0';
                exit;
            } else {
                $data = \common\models\User::find()->where(['username' => $username])->one();
                if (!empty($data)) {
                    echo 0;
                    exit;
                } else {
                    echo 1;
                    exit;
                }
            }
        }
    }

    /**
     * Save product to wish list.
     * @param product id
     * if user logged in set user id otherwise redirect to login
     */
    public function actionSavewishlist() {
        if (Yii::$app->request->isAjax) {
            $flag = 0;
            $canonical = $_POST['product'];
            $product = \common\models\Product::find()->where(['canonical_name' => $canonical, 'status' => '1'])->one();
            $product_id = $product->id;
            if ($product_id != '') {
                $user_id = '';
                $sessonid = '';
                if (isset(Yii::$app->user->identity->id)) {
                    $user_id = Yii::$app->user->identity->id;
                    $model = WishList::find()->where(['product' => $product_id, 'user_id' => $user_id])->one();
                    if (empty($model)) {
                        $model = new WishList();
                        $model->user_id = $user_id;
                        $model->session_id = $sessonid;
                        $model->product = $product_id;
                        $model->date = date('Y-m-d');
                    } else {
                        $model->date = date('Y-m-d');
                    }
                    if ($model->save()) {
                        $flag = 1;
                    } else {
                        $flag = 3;
                    }
                } else {
                    $flag = 2;
                }
            }
            echo $flag;
        }
    }

    public function actionBottleImageSave() {
        if (Yii::$app->request->isAjax) {
            $milliseconds = round(microtime(true) * 1000);
            if (!isset(Yii::$app->session['temp_img_session'])) {
                Yii::$app->session['temp_img_session'] = $milliseconds;
            }
            $uploaddir = Yii::$app->basePath . '/../' . "uploads/create_your_own/bottle_image/";
            $temp = explode(".", $_FILES["fileToUpload"]["name"]);
            basename($_FILES['fileToUpload']['name']);
            if (move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $uploaddir . Yii::$app->session['temp_img_session'] . '.' . end($temp))) {
                $sess = Yii::$app->session['create-your-own'];
                Yii::$app->session['create-your-own'] = array_merge($sess, ['img-extension' => end($temp)]);
                echo Yii::$app->homeUrl . "uploads/create_your_own/bottle_image/" . Yii::$app->session['temp_img_session'] . '.' . Yii::$app->session['create-your-own']['img-extension'];
            }
        }
    }

    public function actionEmailCheck() {
        if (yii::$app->request->isAjax) {
            $email = $_POST['email'];
            $user = \common\models\User::find()->where(['email' => $email])->one();
            if (empty($user)) {
                $data['result'] = 1;
                echo json_encode($data);
//                                echo 1;
            } else {
                $data['result'] = 0;
                echo json_encode($data);
//                echo 0;
            }
        }
    }

    public function actionSubscribeEmail() {
        if (yii::$app->request->isAjax) {
            $email = $_POST['email'];
            $user = \common\models\Subscribe::find()->where(['email' => $email])->one();
            if (empty($user)) {
                $data['result'] = 1;
                echo json_encode($data);
//                                echo 1;
            } else {
                $data['result'] = 0;
                echo json_encode($data);
//                echo 0;
            }
        }
    }

}
