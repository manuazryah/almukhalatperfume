<?php

use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View view component instance */
/* @var $message \yii\mail\MessageInterface the message being composed */
/* @var $content string main view render result */
if (isset($touser) && $touser != '')
        $name = $touser;
else
        $name = '';
?>
<?php $this->beginPage() ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <title>Order Confirmation</title>
        </head>

        <body>
                <?php $this->beginBody() ?>
                <table cellpadding="0" cellspacing="0" border="0">
                        <tbody>
                                <tr>
                                        <td>
                                                <div style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; margin: 0; padding: 0; color: rgb(0, 0, 0);  font-size: 14px">
                                                        <table width="100%" cellpadding="0" cellspacing="0" border="0"  style="border-collapse: collapse; font-size: 12px; padding: 0; margin: 0 auto; ">
                                                                <tbody>
                                                                        <tr>
                                                                                <td valign="top"  align="center" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 0; margin: 0; width: 100%">
                                                                                        <table cellpadding="0" cellspacing="0" border="0" align="center"  style="border-collapse: collapse; font-size: 12px; padding: 0; margin: 70px auto; width: 700px; border: 1px solid rgb(199, 199, 199); ">
                                                                                                <tbody>
                                                                                                        <tr>
                                                                                                                <td style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 0; margin: 0">
                                                                                                                        <table cellpadding="0" cellspacing="0" border="0" class="x_902363135m_-4486764198706722540logo-container" style="border-collapse: collapse; font-size: 12px;   width: 100%; text-align: center;background:#fff;border-bottom: 1px solid rgb(223, 223, 223);">
                                                                                                                                <tbody>
                                                                                                                                        <tr>
                                                                                                                                                <td class="x_902363135m_-4486764198706722540logo" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding:15px 15px; margin: 0">
                                                                                                                                                        <a href="#" style="color: rgb(0, 0, 0)" target="_blank">
                                                                                                                                                                <?php echo Html::img('http://' . Yii::$app->request->serverName . '/images/logo.png', $options = ['width' => '100', 'border' => '0', 'style' => 'height: auto; display: inline-block; outline: none; text-decoration: none; width: 180px; max-width: 100%']) ?>
                                                                                                                                                        </a>
                                                                                                                                                </td>
                                                                                                                                        </tr>
                                                                                                                                </tbody>
                                                                                                                        </table>
                                                                                                                </td>
                                                                                                        </tr>

                                                                                                        <?= $content ?>

                                                                                                        <tr>
                                                                                                                <td style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 0; margin: 0">
                                                                                                                        <table cellspacing="0" cellpadding="0" border="0" class="x_902363135m_-4486764198706722540bottom-content" style="border-collapse: collapse; font-size: 12px; padding: 0; margin: 0; width: 100% !important">
                                                                                                                                <tbody>
                                                                                                                                        <tr>
                                                                                                                                                <td align="center" style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 12px; vertical-align: top; padding: 15px; margin: 0; background: #51b8bd; text-align: center"><span style="color: rgb(255, 255, 255); text-transform: uppercase; font-size: 24px; letter-spacing: 5px">Perfumedunia</span></td>
                                                                                                                                        </tr>
                                                                                                                                        <tr style="background:#51b8bd;">
                                                                                                                                                <td style="font-family: Arial, Helvetica, sans-serif; font-weight: normal; border-collapse: collapse; font-size: 10px; vertical-align: top; padding: 0 15px 40px; margin: 0; text-align: center; color:#CCC"> Visit Perfumedunia to read the "<a href="https://www.perfumedunia.com/terms-condition" style="color:#da9c07" target="_blank">Terms and Conditions</a>" and "<a href="https://www.perfumedunia.com/privacy-policy" style="color:#da9c07" target="_blank">Privacy Policy</a>". </td>
                                                                                                                                        </tr>
                                                                                                                                </tbody>
                                                                                                                        </table>
                                                                                                                </td>
                                                                                                        </tr>
                                                                                                </tbody>
                                                                                        </table>
                                                                                </td>
                                                                        </tr>
                                                                </tbody>
                                                        </table>
                                                </div>
                                        </td>
                                </tr>
                        </tbody>
                </table>


                <?php $this->endBody() ?>
        </body>
</html>
<?php $this->endPage() ?>


