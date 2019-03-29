<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "about".
 *
 * @property int $id
 * @property string $title
 * @property string $description
 * @property string $vision
 * @property string $mission
 * @property string $quotation
 * @property string $about_image
 * @property int $CB
 * @property int $UB
 * @property string $DOC
 * @property string $DOU
 */
class About extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'about';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['description', 'vision', 'mission', 'quotation', 'detailed_description', 'title'], 'required'],
            [['description', 'vision', 'mission', 'quotation', 'detailed_description'], 'string'],
            [['CB', 'UB'], 'integer'],
            [['DOC', 'DOU'], 'safe'],
            [['title'], 'string', 'max' => 200],
            [['about_image'], 'string', 'max' => 500],
            [['about_image'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg,jpeg,gif'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Small Description',
            'vision' => 'Vision',
            'mission' => 'Mission',
            'quotation' => 'Quotation',
            'about_image' => 'About Image',
            'CB' => 'Cb',
            'UB' => 'Ub',
            'DOC' => 'Doc',
            'DOU' => 'Dou',
        ];
    }

}
