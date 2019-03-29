<?php

use yii\helpers\Html;
?>

<html>

    <head>
        <title>Newsletter Subscription Enquiry From Al Mukhalat Perfume</title>
    </head>

    <body>
        <div class="mail-body" style="margin: auto;width: 70%;border: 1px solid #9e9e9e;">
            <div class="content" style="margin: 40px;">
                <?php echo Html::img('http://' . Yii::$app->request->serverName . '/images/logo.png', $options = ['width' => '250px', 'style' => 'display: block;margin-left: auto;margin-right: auto;width: 30%;']) ?>
                <?php echo Html::img(Yii::$app->homeUrl . 'images/logo.png', $options = ['width' => '250px', 'style' => 'display: block;margin-left: auto;margin-right: auto;width: 30%;']) ?>
                <h3 style="color: #545350;">Newsletter Subscription Enquiry From Al Mukhalat Perfume</h3>

                <table style="border-collapse: collapse;width: 100%;text-align: left;margin-bottom: 30px;border: 1px solid #c7c4c4;">
                    <tr>
                        <th style="border: 1px solid #c7c4c4;text-align: left;padding: 5px 10px;">Email</th>
                        <td style="border: 1px solid #c7c4c4;text-align: left;padding: 5px 10px;"><?= $model->email ?></td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>