<?php

namespace common\models;

use Yii;
use yii\base\Model;

/**
 * Login form
 */
class Search extends Model {

    public $brand;
    public $gender;
    public $size;
    public $discount;
    public $min_price;
    public $max_price;
    public $keyword;
    public $category;

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['brand', 'gender', 'size', 'discount', 'min_price', 'max_price', 'keyword', 'category'], 'safe'],
        ];
    }

}
