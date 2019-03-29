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

use yii\base\Widget;
use common\models\Product;

class RelatedProductWidget extends Widget {

    public $id;

    public function init() {
        parent::init();
        if ($this->id === null) {
            return '';
        }
    }

    public function run() {
        $model = Product::findOne($this->id);
        if ($model->stock > 0) {
            return $this->render('related_product', ['product_details' => $model]);
        }
    }

}

?>
