<?php

use yii\helpers\Html;
$user_detail = common\models\User::findOne($user_id);
?>
<tr>
    <td valign="top" class="x_902363135m_-4486764198706722540top-content" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 0; margin: 0; background: rgb(255, 255, 255)"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%; border-collapse: collapse; font-size: 12px; padding: 0; margin: 0">
            <tbody>
            <tr>
                <td class="x_902363135m_-4486764198706722540action-content" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 40px 20px 40px 20px; margin: 0; line-height: 18px"><p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left">Hi, <?= $user_detail->first_name . ' ' . $user_detail->last_name ?>, </strong>,</p>
                    <p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left">Your order with order id <?= $order->order_id ?> is returned by Perfumedunia team.</p>
                    <p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left">The reason for returned is <?= $order->return_reason?>.</p>

            </tr>
            </tbody>
        </table>
    </td>
</tr>