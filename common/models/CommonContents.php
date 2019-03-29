<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "common_contents".
 *
 * @property int $id
 * @property string $top_left_title
 * @property string $delivery_information
 * @property string $offer_image
 * @property string $offer_link
 * @property string $title1
 * @property string $content1
 * @property string $title2
 * @property string $content2
 * @property string $title3
 * @property string $content3
 * @property string $phone_no
 * @property string $email
 * @property int $status
 * @property int $CB
 * @property int $UB
 * @property string $DOC
 * @property string $DOU
 */
class CommonContents extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'common_contents';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['status', 'CB', 'UB'], 'integer'],
            [['DOC', 'DOU'], 'safe'],
            [['top_left_title', 'title1', 'content1', 'title2', 'content2', 'title3', 'content3', 'email', 'phone_no', 'delivery_information'], 'required'],
            [['top_left_title', 'title1', 'content1', 'title2', 'content2', 'title3', 'content3', 'email'], 'string', 'max' => 100],
            [['delivery_information', 'offer_link', 'facebook_link', 'twitter_link', 'linkedin_link', 'instagram_link'], 'string', 'max' => 255],
            [['phone_no'], 'string', 'max' => 15],
            [['offer_image'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg, jpeg, gif'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'top_left_title' => 'Top Left Title',
            'delivery_information' => 'Delivery Information',
            'offer_image' => 'Offer Image',
            'offer_link' => 'Offer Link',
            'title1' => 'Title1',
            'content1' => 'Content1',
            'title2' => 'Title2',
            'content2' => 'Content2',
            'title3' => 'Title3',
            'content3' => 'Content3',
            'phone_no' => 'Phone No',
            'email' => 'Email',
            'status' => 'Status',
            'CB' => 'Cb',
            'UB' => 'Ub',
            'DOC' => 'Doc',
            'DOU' => 'Dou',
        ];
    }

}
