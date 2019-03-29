<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use common\models\User;
use kartik\daterange\DateRangePicker;
use yii\jui\DatePicker;
use kartik\export\ExportMenu;

/* @var $this yii\web\View */
/* @var $searchModel common\models\OrderMasterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Order Wise Report';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="order-master-index">

    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><?= Html::encode($this->title) ?></h3>


                </div>
                <div class="panel-body">
                    <div class="row" style="margin-left: 0px;border-bottom: 2px solid rgba(39, 41, 42, 0.46);">
                        <!--<div class="col-md-6">-->

                            <?= $this->render('_search_order', ['model' => $searchModel, 'order_date_from' => $order_date_from,  'order_search' => $order_search,'order_date_to' => $order_date_to, 'amount_from' => $amount_from,'amount_to' => $amount_to, 'user_search' => $user_search, 'admin_status' => $admin_status]) ?>

                        <!--</div>-->
                        <!--<div class="col-md-6">-->
                            <div class="form-group ">
                                <table cellspacing="0" class="table table-small-font table-bordered table-striped" style="">
                                    <tr>
                                        <th>Total Sale</th>
                                        <th>Total Amount</th>
                                        <th>Amount Net Amount</th>
                                    </tr>
                                    <?php
                                                                        $sale_total = $dataProvider->getTotalCount();
                                                                        $amount_total = common\models\OrderMaster::getAmountTotals($dataProvider->getModels(), 'total_amount');
                                                                        $net_amount_total = common\models\OrderMaster::getAmountTotals($dataProvider->getModels(), 'net_amount');
                                                                        ?>
                                    <tr>
                                        <td><?= $sale_total ?></td>
                                        <td><?= sprintf('%0.2f', $amount_total); ?></td>
                                        <td><?= sprintf('%0.2f', $net_amount_total); ?></td>
                                    </tr>
                                </table>
                            </div>
                        <!--</div>-->
                    </div>


                 <div class="table-responsive">
                    
                     <?php
                        $gridColumns = [
//                            ['class' => 'yii\grid\SerialColumn'],
                            'order_id',
                            
                            [
                                'attribute' => 'user_id',
                                'label' => 'User Name',
                                'format' => 'raw',
                                'value' => function ($data) {
                                    if (isset($data->user_id)) {
                                        $name = User::findOne($data->user_id);
                                        return $name->first_name . ' ' . $name->last_name;
                                    } else {
                                        return '';
                                    }
                                },
                            ],
                            [
                                'attribute' => 'total_amount',
                                'value' => function ($data) {
                                    if (isset($data->total_amount)) {
                                        return sprintf('%0.2f', $data->total_amount);
                                    } else {
                                        return '';
                                    }
                                },
                            ],
                            [
                                'attribute' => 'net_amount',
                                'value' => function ($data) {
                                    if (isset($data->net_amount)) {
                                        return sprintf('%0.2f', $data->net_amount);
                                    } else {
                                        return '';
                                    }
                                },
                            ],
                            'order_date',
                        ];
                        ?>
                        <?php
                        echo ExportMenu::widget([
                            'dataProvider' => $dataProvider,
                            'columns' => $gridColumns,
//                                'stripHtml'=>TRUE
                        ]);

                        // You can choose to render your own GridView separately
                        echo \kartik\grid\GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => $gridColumns,
                            'rowOptions' => function($model) {
                                if ($model->status == 0) {
                                    return ['class' => 'non-active-users'];
                                }
                            },
                        ]);
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>