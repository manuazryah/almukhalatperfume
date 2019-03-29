<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\CommonContents;

/**
 * CommonContentsSearch represents the model behind the search form about `common\models\CommonContents`.
 */
class CommonContentsSearch extends CommonContents
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'status', 'CB', 'UB'], 'integer'],
            [['top_left_title', 'delivery_information', 'offer_image', 'offer_link', 'title1', 'content1', 'title2', 'content2', 'title3', 'content3', 'phone_no', 'email', 'DOC', 'DOU'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = CommonContents::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'status' => $this->status,
            'CB' => $this->CB,
            'UB' => $this->UB,
            'DOC' => $this->DOC,
            'DOU' => $this->DOU,
        ]);

        $query->andFilterWhere(['like', 'top_left_title', $this->top_left_title])
            ->andFilterWhere(['like', 'delivery_information', $this->delivery_information])
            ->andFilterWhere(['like', 'offer_image', $this->offer_image])
            ->andFilterWhere(['like', 'offer_link', $this->offer_link])
            ->andFilterWhere(['like', 'title1', $this->title1])
            ->andFilterWhere(['like', 'content1', $this->content1])
            ->andFilterWhere(['like', 'title2', $this->title2])
            ->andFilterWhere(['like', 'content2', $this->content2])
            ->andFilterWhere(['like', 'title3', $this->title3])
            ->andFilterWhere(['like', 'content3', $this->content3])
            ->andFilterWhere(['like', 'phone_no', $this->phone_no])
            ->andFilterWhere(['like', 'email', $this->email]);

        return $dataProvider;
    }
}
