<tr>
        <td valign="top" class="x_902363135m_-4486764198706722540top-content" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 0; margin: 0; background: rgb(255, 255, 255)"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%; border-collapse: collapse; font-size: 12px; padding: 0; margin: 0">
                        <tbody>
                                <tr>
                                        <td class="x_902363135m_-4486764198706722540action-content" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 40px 20px 40px 20px; margin: 0; line-height: 18px"><p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left">Dear <?= $model->first_name . ' ' . $model->last_name ?>,</p>
                                                <p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left">Not to worry, we got you! Let's get you a new password.</p>
                                                <p style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-align: left">Please click the following button to reset your password.</p>
                                                <p><a href="http://<?= Yii::$app->request->serverName ?>/site/new-password?token=<?= $val ?>" style="display: inline-block;cursor: pointer;padding: 6px 12px;font-size: 13px;line-height: 1.42857143;text-decoration: none;color: #fff;border-color: #75be96;background-color: #75be96;border: 1px solid transparent;">Reset Password</a></p>
                                </tr>
                        </tbody>
                </table>
        </td>
</tr>