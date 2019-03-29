<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use common\models\User;
use kartik\daterange\DateRangePicker;
use kartik\datetime\DateTimePicker;
use common\models\OrderMaster;

/* @var $this yii\web\View */
/* @var $searchModel common\models\OrderMasterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Order Masters';
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    .tab-content{
        background: #f9f9f9 !important;
    }
    .nav.nav-tabs>li>a {
        background-color: #f9f9f9;
    }
    .nav.nav-tabs>li {
        background: #f9f9f9;
    }
    .nav.nav-tabs>li.active>a {
        background-color: #f9f9f9 !important;
    }
    .nav.nav-tabs.nav-tabs-justified, .nav-tabs-justified .nav.nav-tabs {
        background: #f9f9f9;
    }
    .nav.nav-tabs>li>a:hover {
        background-color: #f9f9f9;
    }
    .nav-tabs {
        border-bottom: 1px solid #f9f9f9 !important;
    }
    .hidden-xs{
        padding-left: 5px;
    }
    .admin_status_field{
        padding: 0px 0px !important;
    }
</style>
<div class="order-master-index">

    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><?= Html::encode($this->title) ?></h3>


                </div>
                <div class="panel-body">

                    <ul class="nav nav-tabs">
                        <li class="<?= $order_status == '' ? 'active' : '' ?>">
                            <?= Html::a('<span class="visible-xs"><i class="fa-home"></i></span><i class="fa fa-th-list" aria-hidden="true"></i><span class="hidden-xs">All Orders</span>', ['index'], ['class' => '']) ?>
                        </li>
                        <li class="<?= $order_status == '0' ? 'active' : '' ?>">
                            <?= Html::a('<span class="visible-xs"><i class="fa-home"></i></span><i class="fa fa-th-list" aria-hidden="true"></i><span class="hidden-xs">Pending</span>', ['index', 'order_status' => 0], ['class' => '']) ?>
                        </li>
                        <li class="<?= $order_status == '4' ? 'active' : '' ?>">
                            <?= Html::a('<span class="visible-xs"><i class="fa-home"></i></span><i class="fa fa-th-list" aria-hidden="true"></i><span class="hidden-xs">Delivered</span>', ['index', 'order_status' => 4], ['class' => '']) ?>
                        </li>
                        <li class="<?= $order_status == '5' ? 'active' : '' ?>">
                            <?= Html::a('<span class="visible-xs"><i class="fa-home"></i></span><i class="fa fa-th-list" aria-hidden="true"></i><span class="hidden-xs">Cancelled</span>', ['index', 'order_status' => 5], ['class' => '']) ?>
                        </li>

                    </ul>


                    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>



                    <?php // ech  Html::a('<i class="fa-th-list"></i><span> Create Order Master</span>', ['create'], ['class' => 'btn btn-warning  btn-icon btn-icon-standalone']) ?>
                    <div class="table-responsive" style="border: none">
                        <button class="btn btn-white" id="search-option" style="float: right;">
                            <i class="linecons-search"></i>
                            <span>Search</span>
                        </button>
                        <?=
                        GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'rowOptions' => function ($model, $key, $index, $grid) {
                                return ['id' => $model['id']];
                            },
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],
                                [
                                    'attribute' => 'order_id',
                                    'format' => 'raw',
                                    'value' => function ($data) {
                                        if (isset($data->order_id)) {
                                            return \yii\helpers\Html::a($data->order_id, ['/order/order-master/view', 'id' => $data->order_id]
//                                                    ,['target' => '_blank']
                                            );
                                        } else {
                                            return '';
                                        }
                                    },
                                ],
                                [
                                    'attribute' => 'user_id',
                                    'format' => 'raw',
                                    'filter' => ArrayHelper::map(User::find()->all(), 'id', 'first_name'),
                                    'value' => function ($data) {
                                        $name = User::findOne($data->user_id);
                                        return \yii\helpers\Html::a($name->first_name . ' ' . $name->last_name, ['/user/user/update', 'id' => $data->user_id], ['target' => '_blank']);
                                    },
                                ],
                                'net_amount',
                                [
                                    // the attribute
                                    'attribute' => 'order_date',
                                    // format the value
                                    'value' => function ($data) {
                                        return date("Y-m-d", strtotime($data->order_date));
                                    },
                                    // some styling?
                                    'headerOptions' => [
                                        'class' => 'col-md-2'
                                    ],
                                ],
                                [
                                    'attribute' => 'payment_mode',
                                    'label' => 'Payment',
                                    'format' => 'raw',
                                    'filter' => ['1' => 'COD', '2' => 'Payment'],
                                    'value' => function ($data) {
                                        if (isset($data->payment_mode)) {
                                            if ($data->payment_mode == '1')
                                                $status = 'COD';
                                            if ($data->payment_mode == '2')
                                                $status = 'Payment';

//                                            return $data->payment_status;
                                            return $status;
                                        } else {
                                            return '';
                                        }
                                    },
                                ],
                                [
                                    'attribute' => 'User status',
                                    'format' => 'raw',
                                    'filter' => ['4' => 'User Confirmed', '5' => 'User Cancelled'],
                                    'value' => function ($data) {
                                        if (isset($data->status)) {
                                            if ($data->status == '4')
                                                $status = 'User Confirmed';
                                            if ($data->status == '5')
                                                $status = 'User Cancelled';
                                            return $status;
                                        } else {
                                            return '';
                                        }
                                    },
                                ],
                                [
                                    'attribute' => 'admin_status',
                                    'format' => 'raw',
                                    'filter' => ['0' => 'Pending', '1' => 'Order Placed', '2' => 'Order Packed', '3' => 'Order Dispatched', '4' => 'Order Delivered', '5' => 'Cancelled', '6' => 'Return'],
                                    'value' => function ($data) {
                                        if ($data->admin_status !== 4 && $data->admin_status !== 5 && $data->admin_status !== 6) {
                                            return \yii\helpers\Html::dropDownList('admin_status', null, ['0' => 'Pending', '1' => 'Order Placed', '2' => 'Order Packed', '3' => 'Order Dispatched', '4' => 'Order Delivered', '5' => 'Cancelled', '6' => 'Return'], ['options' => [$data->admin_status => ['Selected' => 'selected']], 'class' => 'form-control admin_status_field admin_status', 'id_' => $data->order_id, 'id' => 'status_' . $data->order_id,]);
                                        } else {
                                            if ($data->admin_status == '4')
                                                $status = 'Order Delivered';
                                            if ($data->admin_status == '5')
                                                $status = 'Order Cancelled';
                                            if ($data->admin_status == '6')
                                                $status = 'Order Returned';
                                            return '<span class="admin_status_completed">' . $status . '</span>';
                                        }
                                    },
                                ],
                                [
                                    'attribute' => 'expected_delivery_date',
                                    'label' => 'Expected Date',
                                    'format' => 'raw',
                                    'value' => function ($data) {
                                        $order_masters = OrderMaster::find()->where(['order_id' => $data->order_id])->one();
//                                            if ($order_masters->status != 4 && $order_masters->status != 5) {
//                                            if ($data->status != 4 ) {
//                                                if ($data->assigned_to == Yii::$app->user->identity->id || Yii::$app->user->identity->post_id == 1) {
                                        return \yii\jui\DatePicker::widget([
                                                    'dateFormat' => 'dd-MM-yyyy',
                                                    'id' => $data->order_id,
                                                    'options' => ['id_' => $data->order_id, 'class' => 'admin_status delivered_date_' . $data->order_id],
                                                    'value' => $data->expected_delivery_date,
                                        ]);
                                    },
                                ],
                                [
                                    'class' => 'yii\grid\ActionColumn',
//                                    'contentOptions' => ['style' => 'width:100px;'],
                                    'header' => 'Actions',
                                    'template' => '{view}{print}{reason}',
                                    'buttons' => [
                                        'view' => function ($url, $model) {
                                            return Html::a('<span><i class="fa fa-eye" aria-hidden="true"></i></span>', $url, [
                                                        'title' => Yii::t('app', 'view'),
                                                        'class' => '',
                                            ]);
                                        },
                                        'print' => function ($url, $model) {
                                            if ($model->status == 4) {
                                                return Html::a('<span><i class="fa fa-print" aria-hidden="true"></i></span>', $url, [
                                                            'title' => Yii::t('app', 'print'),
                                                            'class' => '',
                                                            'target' => '_blank',
                                                ]);
                                            }
                                        },
                                        'reason' => function ($url, $model) {
                                            if ($model->status == 5) {
                                                return Html::a('<span><i class="fa  fa-reorder" aria-hidden="true"></i></span>', '#cancelModal', [
                                                            'title' => Yii::t('app', 'Reason for Cancel'),
                                                            'class' => 'cancel_order',
                                                            'id' => $model->order_id . '_' . $model->cancel_reason,
                                                ]);
                                            }
                                        },
                                    ],
                                    'urlCreator' => function ($action, $model) {
                                        if ($action === 'view') {
                                            $url = Url::to(['view', 'id' => $model->order_id]);
                                            return $url;
                                        }
                                        if ($action === 'print') {
                                            $url = Url::to(['print', 'id' => $model->order_id]);
                                            return $url;
                                        }
                                    }
                                ],
                            ],
                        ]);
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="returnModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        Modal content
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Return Order - <span class="order_id"></span></h4>
            </div>
            <div class="modal-body">
                <form class="form">
                    <textarea class="form-control return_reason" rows="6" placeholder="Reason for return" required></textarea>
                    <input type="hidden" class="return-order_id" >
                    <span class="return_error error"></span>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary return_confirm" >Return</button>
            </div>
        </div>

    </div>
</div>
<div id="cancelModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Reason for Cancel</h4>
            </div>
            <div class="modal-body">
                <form class="form">
                    <textarea class="form-control cancel_reason" rows="6" placeholder="Reason for cancel" readonly="readonly">addasddasd</textarea>
                    <input type="hidden" class="cancel-order_id" >
                    <span class="return_error error"></span>
                </form>
            </div>

        </div>

    </div>
</div>

<script>
    $(document).ready(function () {

        $('.cancel_order').on('click', function () {
            var id = $(this).attr('id');
            var reason = id.split("_");
//            var reason = $('.reason_' + id).html();
            $('.cancel_reason').val(reason[1]);
            $('#cancelModal').modal('toggle');
        });


        $(".filters").slideToggle();
        $("#search-option").click(function () {
            $(".filters").slideToggle();
        });

    });
</script>

