<?php

use yii\helpers\Html;
use common\models\User;
use common\models\CountryCode;
?>
<tr>
    <td valign="top" class="x_902363135m_-4486764198706722540top-content" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 0; margin: 0; background: rgb(255, 255, 255)"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%; border-collapse: collapse; font-size: 12px; padding: 0; margin: 0">
            <tbody>
            <tr>
                <td class="x_902363135m_-4486764198706722540action-content" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 40px 20px 40px 20px; margin: 0; line-height: 18px"><p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left">Hi,</p>
                    <p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left"><?= $user->first_name . ' ' . $user->last_name ?> , is registered as new user.Here is the details of new user.</p>
                    <table >
                        <tr>
                            <td>Name </td>
                            <td>:</td>
                            <td><?= $user->first_name . ' ' . $user->last_name ?> </td>
                        </tr>
                        <tr>
                            <td>Email </td>
                            <td>:</td>
                            <td><?= $user->email ?> </td>
                        </tr>
                        <?php
                        if (isset($user->country) && $user->country != '') {
                            $country = CountryCode::findOne($user->country);
                            if (!empty($country)) {
                                ?>
                                <tr>
                                    <td>Country </td>
                                    <td>:</td>
                                    <td><?= $country->country_name ?></td>
                                </tr>
                                <?php
                            }
                        }
                        ?>

                        <?php
                        if (isset($user->gender) && $user->gender != '') {
                            $gender = '';
                            if ($user->gender == 1) {
                                $gender = 'Male';
                            } else if ($user->gender == 2) {
                                $gender = 'Female';
                            }
                            ?>
                            <tr>
                                <td>Gender </td>
                                <td>:</td>
                                <td><?= $gender ?></td>
                            </tr>
                        <?php }
                        ?>

                        <?php
                        if (isset($user->mobile_no) && $user->mobile_no != '') {
                            $mobile_no = $user->mobile_no;
                            if (isset($user->country_code)) {
                                $country_code = CountryCode::findOne($user->country_code);
                                if (!empty($country_code))
                                    $mobile_no = $country_code->country_code . ' - ' . $mobile_no;
                            }
                            ?>
                            <tr>
                                <td>Mobile Number </td>
                                <td>:</td>
                                <td><?= $mobile_no ?></td>
                            </tr>
                        <?php }
                        ?>
                    </table>
            </tr>
            </tbody>
        </table>
    </td>
</tr>