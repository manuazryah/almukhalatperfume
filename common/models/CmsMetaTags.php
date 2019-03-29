<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "cms_meta_tags".
 *
 * @property integer $id
 * @property string $meta_title
 * @property string $meta_description
 * @property string $meta_keyword
 * @property integer $CB
 * @property integer $UB
 * @property string $DOC
 * @property string $DOU
 * @property string $page_title
 */
class CmsMetaTags extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'cms_meta_tags';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['meta_description', 'meta_keyword'], 'string'],
            [['CB', 'UB'], 'integer'],
            [['DOC', 'DOU'], 'safe'],
            [['meta_title'], 'string', 'max' => 500],
            [['page_title'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'meta_title' => 'Meta Title',
            'meta_description' => 'Meta Description',
            'meta_keyword' => 'Meta Keyword',
            'CB' => 'Cb',
            'UB' => 'Ub',
            'DOC' => 'Doc',
            'DOU' => 'Dou',
            'page_title' => 'Page Title',
        ];
    }

    public static function meta_type($type) {
        if ($type == 'men') {
            $meta_tags = CmsMetaTags::find()->where(['id' => 16])->one();
        }
        if ($type == 'women') {
            $meta_tags = CmsMetaTags::find()->where(['id' => 17])->one();
        }
        if ($type == 'oriental') {
            $meta_tags = CmsMetaTags::find()->where(['id' => 18])->one();
        }
        if ($meta_tags) {
            \Yii::$app->view->title = $meta_tags->meta_title;
            \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
            \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        }
    }

    public static function meta_category($category) {
        if ($category == 'scent-diffuser') {
            $meta_tags = CmsMetaTags::find()->where(['id' => 20])->one();
        }
        if ($category == 'gift') {
            $meta_tags = CmsMetaTags::find()->where(['id' => 21])->one();
        }
        if ($category == 'special-offer') {
            $meta_tags = CmsMetaTags::find()->where(['id' => 22])->one();
        }
        if ($meta_tags) {
            \Yii::$app->view->title = $meta_tags->meta_title;
            \Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $meta_tags->meta_keyword]);
            \Yii::$app->view->registerMetaTag(['name' => 'description', 'content' => $meta_tags->meta_description]);
        }
    }

}
