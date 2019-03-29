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

    public $id;
    public $first;
    public $div_id;
    public $submenu;
    public $brand_list;
    public $brands_filter;
    public $fragrance_filter;
    public $size_list;
    public $target;
    public $minrange;
    public $maxrange;

    public function init() {
        parent::init();
        if ($this->id === null) {
            return '';
        }
    }

    public function run() {
        $brand_list = $this->brand_list;
        $brands_filter = $this->brands_filter;
        $submenu = $this->submenu;
        $fragrance_filter = $this->fragrance_filter;
        $size_list = $this->size_list;
        $target = $this->target;
        $minrange = $this->minrange;
        $maxrange = $this->maxrange;
        $fragrances = Fregrance::find()->where(['status' => 1])->all();
//        echo '<pre>';print_r($fragrances );exit;
        return $this->render('side-menu', ['brand_list' => $brand_list, 'fragrances' => $fragrances, 'brands_filter' => $brands_filter, 'submenu' => $submenu, 'fragrance_filter' => $fragrance_filter, 'size_list' => $size_list, 'target' => $target, 'minrange' => $minrange, 'maxrange' => $maxrange]);
    }

}

?>
