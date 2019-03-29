<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AppointmentWidget
 *
 * @author
 * JIthin Wails
 */

namespace common\components;

use Yii;
use yii\base\Widget;
use yii\helpers\Html;
use yii\web\NotFoundHttpException;
use common\models\Brand;
use common\models\Fregrance;
use common\models\Category;
use common\models\Product;

class SidemenuWidget extends Widget {

    public $brand_list;
    public $size_list;
    public $type;
    public $category;
    public $model_filter;

    public function init() {
        parent::init();
        if ($this->id === null) {
            return '';
        }
    }

    public function run() {
        $size_list = $this->size_list;
        $type = $this->type;
        $category = $this->category;
        $model_filter = $this->model_filter;
        $brand_list = Brand::find()->where(['status' => 1])->groupBy(['brand'])->all();
        $fragrances = Fregrance::find()->where(['status' => 1])->all();
        $genders = \common\models\Gender::find()->where(['status' => 1])->all();
        return $this->render('side-menu', ['brand_list' => $brand_list, 'fragrances' => $fragrances, 'genders' => $genders, 'model_filter' => $model_filter, 'size_list' => $size_list, 'type' => $type, 'category' => $category]);
    }

}

?>
