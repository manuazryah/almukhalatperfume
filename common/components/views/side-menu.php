<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\models\Product;
use yii\widgets\Pjax;

//use yii\widgets\Pjax;
$max_value = Product::find()->select('id')->max('price');
$min_value = Product::find()->select('id')->min('offer_price');
if ($target == 'men') {
    $type = 0;
} elseif ($target == 'women') {
    $type = 1;
} elseif ($target == 'oriental') {
    $type = 3;
} else {
    $type = '';
}

if (empty($minrange) && empty($maxrange)) {
    $minrange = 0;
    $maxrange = 2000;
}
$useragent = $_SERVER['HTTP_USER_AGENT'];
?>
<aside  class="col-lg-3">
    <?php
    if (preg_match('/android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i', $useragent) || preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i', substr($useragent, 0, 4))) {
        ?>
        <div class="product-left-categories-mobile-view">
            <div class="filter-head">
                <h2 class="head-filter">Product Filter</h2>
                <ul class="filter-list">
                    <li class="list-li">
                        <div class="head-text-button" data-toggle="modal" data-target="#exampleModalLong"><i class="icon"></i>Filter</div>
                    </li>
                </ul>
            </div>
            <!-- Modal -->
            <div class="modal" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="button-header">
                            <button type="button" class="close-button" data-dismiss="modal" aria-label="Close"></button>
                            <button type="submit" class="filter-apply-button">Apply</button>
                            <?= Html::a('Clear', ['/product/index'], ['class' => 'filter-apply-button clear-filter']) ?>
                        </div>
                        <div class="modal-body">
                            <div class="filter-mobile-box"><!--filter-mobile-box-->
                                <div id="accordion">
                                    <div class="card">
                                        <div class="card-header">
                                            <a class="left-b card-link collapsed" data-toggle="collapse" href="#collapse1">Brand</a>
                                        </div>
                                        <div id="collapse1" class="collapse " data-parent="#accordion">
                                            <div class="sizing">
                                                <div class="in-product-left-categories" ><!--in-left-Categories-->

                                                    <div class="other-range-box">
                                                        <div class="search-box">
                                                            <form >
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control search-brand-key"  placeholder="Search by Brand"  value="">
                                                                    <?php
                                                                    foreach ($brand_list as $value) {
                                                                        echo '<input type="hidden" name="brand_list" value="' . $value->id . '">';
                                                                    }
                                                                    ?>
                                                                    <div class="input-group-addon">
                                                                        <input  type="submit" class="send" id="brand_search_submit">
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="content pad0">
                                                            <div class="demo">
                                                                <div class="scroll">
                                                                    <div class="list-type">
                                                                        <ul class="search_brand">
                                                                            <?php
                                                                            foreach ($brand_list as $brand) {
                                                                                ?>
                                                                                <li class="brand_checkboxes_mob">
                                                                                    <label class="input-style-box">
                                                                                        <?php $brand_id = str_replace(' ', '_', $brand->brand); ?>

                                                                                        <input class="check_brand_mob" type="checkbox"  id="<?= strtolower($brand_id) ?>-mob" name="brand[]" atr-url="<?= strtolower($brand_id) ?>"value="<?= $brand->brand ?>"/>
                                                                                        <span class="checkmark"></span> <?= $brand->brand ?> </label>
                                                                                </li>
                                                                            <?php } ?>


                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <a class="left-b card-link collapsed" data-toggle="collapse" href="#collapse2">Targeted Group</a>
                                        </div>
                                        <div id="collapse2" class="collapse" data-parent="#accordion">
                                            <div class="sizing">
                                                <div class="in-product-left-categories" ><!--in-left-Categories-->

                                                    <div class="other-range-box">
                                                        <div class="list-type">
                                                            <ul>
                                                                <li class="type_checkboxes_mob">
                                                                    <label class="input-style-box">
                                                                        <input class="check_type_mob" <?= ($type == 0) && ($target == 'men') ? 'checked' : '' ?> id="men-mob" type="checkbox" name="type[]" value="0" />
                                                                        <span class="checkmark"></span> Men </label>
                                                                </li>

                                                                <li class="type_checkboxes_mob">
                                                                    <label class="input-style-box">
                                                                        <input class="check_type_mob" <?= ($type == 1) && ($target == 'women') ? 'checked' : '' ?> id="women-mob" type="checkbox" name="type[]" value="1" />
                                                                        <span class="checkmark"></span> Women </label>
                                                                </li>
                                                                <li class="type_checkboxes_mob">
                                                                    <label class="input-style-box">
                                                                        <input class="check_type_mob" <?= $type == 2 ? 'checked' : '' ?> id="unisex-mob" type="checkbox" name="type[]" value="2" />
                                                                        <span class="checkmark"></span> Unisex </label>
                                                                </li>
                                                                <li class="type_checkboxes_mob">
                                                                    <label class="input-style-box">
                                                                        <input class="check_type_mob" <?= ($type == 3) && ($target == 'oriental') ? 'checked' : '' ?> id="oriental-mob" type="checkbox" name="type[]" value="3" />
                                                                        <span class="checkmark"></span> Oriental </label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <a class="left-b card-link collapsed" data-toggle="collapse" href="#collapse3">Size</a>
                                        </div>
                                        <div id="collapse3" class="collapse" data-parent="#accordion">
                                            <div class="sizing">
                                                <div class="in-product-left-categories" ><!--in-left-Categories-->

                                                    <div class="other-range-box">
                                                        <div class="list-size-data">
                                                            <?php
                                                            foreach ($size_list as $size) {
                                                                if ($size->size) {
                                                                    ?>
                                                                    <div class="size-data-filter size_checkboxes_mob" id="size_checkboxes_mob">
                                                                        <label class="input-size-data">
                                                                            <input class="check_size_mob" type="checkbox" name="size[]" id="<?= $size->size ?>-mob" atr-size= "<?= $size->size ?>"value="<?= $size->size ?>"/>
                                                                            <span class="checkmark-size-data"><?= $size->size ?></span></label>
                                                                    </div>
                                                                    <?php
                                                                }
                                                            }
                                                            ?>
                                                            <div class="clear"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <a class="left-b card-link collapsed" data-toggle="collapse" href="#collapse4">Price</a>
                                        </div>
                                        <div id="collapse4" class="collapse" data-parent="#accordion">
                                            <div class="sizing">
                                                <div class="in-product-left-categories" ><!--in-left-Categories-->

                                                    <div class="other-range-box">
                                                        <div class="list-type">
                                                            <div id="slider-container_mob"></div>
                                                            <div class="slider-values">
                                                                <!--<input type="text" id="amount" />-->
                                                                <input type="hidden" name="min_price" id="min_price_mob" value="<?= $minrange ?>">
                                                                <input type="hidden" name="max_price" id="max_price_mob" value="<?= $maxrange ?>">
                                                                <span class="min_value value-left" id="min_mob"></span>
                                                                <span class="max_value value-right" id="max_mob"></span>
                                                                <div class="clearfix"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div><!--filter-mobile-box-->



                        </div>

                    </div>
                </div>
            </div>
        </div>
        <?php
    } else {
        ?>
        <div class="product-left-categories-destop-view">
            <div class="in-product-left-categories" ><!--in-left-Categories-->
                <?php if ($brand_list) { ?>
                    <h2 class="head-text">Brand</h2>
                    <div class="other-range-box">
                        <div class="search-box">
                            <form >
                                <div class="input-group">
                                    <input type="text" class="form-control search-brand-key"  placeholder="Search by Brand"  value="">
                                    <?php
                                    foreach ($brand_list as $value) {
                                        echo '<input type="hidden" name="brand_list" value="' . $value->id . '">';
                                    }
                                    ?>
                                    <div class="input-group-addon">
                                        <input  type="submit" class="send" id="brand_search_submit">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="container">
                            <div class="content">
                                <div class="demo">
                                    <div class="scrollbar-inner">
                                        <div class="list-type">
                                            <ul class="search_brand">
                                                <?php
                                                foreach ($brand_list as $brand) {
                                                    ?>
                                                    <li id="brand_checkboxes">
                                                        <label class="input-style-box">
                                                            <?php $brand_id = str_replace(' ', '_', $brand->brand); ?>
                                                            <input class="check_brand" type="checkbox"  id="<?= strtolower($brand_id) ?>" name="brand[]" value="<?= $brand->brand ?>" />
                                                            <span class="checkmark"></span> <?= $brand->brand ?> </label>
                                                    </li>
                                                <?php } ?>

                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <h2 class="head-text">Target Groups</h2>
                <div class="other-range-box">
                    <div class="list-type">
                        <ul  id="type_checkboxes">
                            <li>
                                <label class="input-style-box">
                                    <input class="check_type" <?= ($type == 0) && ($target == 'men') ? 'checked' : '' ?> id="men" type="checkbox" name="type[]" value="0" />
                                    <span class="checkmark"></span> Men </label>
                            </li>
                            <li>
                                <label class="input-style-box">
                                    <input class="check_type" <?= ($type == 1) && ($target == 'women') ? 'checked' : '' ?> id="women" type="checkbox" name="type[]" value="1" />
                                    <span class="checkmark"></span> Women </label>
                            </li>
                            <li>
                                <label class="input-style-box">
                                    <input class="check_type" <?= $type == 2 ? 'checked' : '' ?> id="unisex" type="checkbox" name="type[]" value="2" />
                                    <span class="checkmark"></span> Unisex </label>
                            </li>
                            <li>
                                <label class="input-style-box">
                                    <input class="check_type" <?= ($type == 3) && ($target == 'oriental') ? 'checked' : '' ?> id="oriental" type="checkbox" name="type[]" value="3" />
                                    <span class="checkmark"></span> Oriental </label>
                            </li>
                        </ul>
                    </div>
                </div>
                <?php if ($size_list) { ?>
                    <h2 class="head-text">Size</h2>
                    <div class="other-range-box">
                        <div class="list-size-data">
                            <?php
                            foreach ($size_list as $size) {
                                if ($size->size) {
                                    ?>
                                    <div class="size-data-filter" id="size_checkboxes">
                                        <label class="input-size-data">
                                            <input class="check_size" type="checkbox" name="size[]" id="<?= $size->size ?>" value="<?= $size->size ?>"/>
                                            <span class="checkmark-size-data"><?= $size->size ?></span></label>
                                    </div>
                                    <?php
                                }
                            }
                            ?>

                            <div class="clear"></div>

                        </div>
                    </div>
                <?php } ?>
                <h2 class="head-text">Price</h2>
                <div class="other-range-box">
                    <div class="list-type">
                        <div id="slider-container"></div>
                        <div class="slider-values">
                          <!--<input type="text" id="amount" />-->
                            <input type="hidden" name="min_price" id="min_price" value="<?= $minrange ?>">
                            <input type="hidden" name="max_price" id="max_price" value="<?= $maxrange ?>">
                            <span class="min_value value-left" id="min"></span>
                            <span class="max_value value-right" id="max"></span>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <?= Html::a('Clear filter', ['/product/index'], ['id' => 'clear_filter']) ?>
        </div>
        <?php
    }
    ?>
</aside>
<script>
    var path_ = window.location.href;
    $(document).ready(function () {
        var min_ = $('#min_price').val();
        var max_ = $('#max_price').val();
        var brand_check = getUrlParameter('brand');
        var frag_check = getUrlParameter('fragrance');
        var size_check = getUrlParameter('size');
        var type_check = getUrlParameter('type');
        var min_range_ = getUrlParameter('minrange');
        var max_range_ = getUrlParameter('maxrange');
        $('#clear_search_brand').click(function () {
            var new_path = window.location.href;
            if (window.location.href.indexOf("brand") !== -1) {

                var new_path = uncheckparams(brand_check, 'brand', new_path);
            }
            if (window.location.href.indexOf("fragrance") !== -1) {
                var new_path = uncheckparams(frag_check, 'fragrance', new_path);
            }
            if (window.location.href.indexOf("size") !== -1) {
                var new_path = uncheckparams(size_check, 'size', new_path);
            }
            if (window.location.href.indexOf("type") !== -1) {
                var new_path = uncheckparams(type_check, 'type', new_path);
            }
            if (window.location.href.indexOf("minrange") !== -1) {
                var new_path = uncheckparams(min_range_, 'minrange', new_path);
            }
            if (window.location.href.indexOf("maxrange") !== -1) {
                var new_path = uncheckparams(max_range_, 'maxrange', new_path);
            }
            window.location.href = new_path;
        });
        checkparams(brand_check);
        checkparams(frag_check);
        checkparams(size_check);
        checkparams(type_check);
        checkparams_mob(brand_check);
        checkparams_mob(frag_check);
        checkparams_mob(size_check);
        checkparams_mob(type_check);
        /***************************desktop view filter starts****************************/

        var brands = [];
        var frag = [];
        var size = [];
        var type = [];
        $(document).on("click", "input.check_brand", function (e) {
            var brands = [];
            $('#brand_checkboxes input:checked').each(function () {
                brands.push(this.id);
            });
            var new_path = geturl('brand', path_, brands);
            window.location.href = new_path;
        });
        $("input.check_frag").click(function () {
            var frag = [];
            $('#frag_checkboxes input:checked').each(function () {
                frag.push(this.id);
            });
            var new_path = geturl('fragrance', path_, frag);
            window.location.href = new_path;
        });
        $("input.check_size").click(function () {
            var size = [];
            $('#size_checkboxes input:checked').each(function () {
                size.push(this.id);
            });
            var new_path = geturl('size', path_, size);
            window.location.href = new_path;
        });
        $("input.check_type").click(function () {
            var type = [];
//            var tech = getUrlParameter('type');
//            if (tech != 'men' && tech != 'women' && tech != 'unisex' && tech != 'oriental') {
//                type.push(tech);
//            }
            $('#type_checkboxes input:checked').each(function () {
                type.push(this.id);
            });
            var new_path = geturl('type', path_, type);
            window.location.href = new_path;
        });
        $('#slider-container').slider({

            range: true,
            min: 0,
            max: 2000,
            values: [min_, max_],
            create: function () {
//              $("#amount").val("$299 - $1099");
                $("#min").text(min_);
                $("#max").text(2000);
            },
            slide: function (event, ui) {
                $('#min').text(ui.values[0]);
                $('#max').text(ui.values[1]);

            },
            change: function (event, ui) {
                var location = window.location.href;
                var min_range = $('#min').text();
                var max_range = $('#max').text();
                var min_value = paramss('minrange');
                var max_value = paramss('maxrange');

                if (window.location.href.indexOf("minrange") !== -1) {
                    var re = new RegExp('minrange=' + min_value + '&&maxrange=' + max_value);
                    var location = location.replace(re, '');
                    var url = location + 'minrange' + '=' + min_range + '&&maxrange=' + max_range;
                } else {
                    var url = location + '&&minrange' + '=' + min_range + '&&maxrange=' + max_range;
                }
                window.location.href = url;





            }
        });
        /*************mobile filter start**********************/
        var brands_mob = [];
        var frag_mob = [];
        var size_mob = [];
        var type_mob = [];
        $(document).on("click", ".filter-apply-button", function (e) {
            var array = path_.split("?");
            var path_mob = array[0];
            var brands_mob = [];
            $('.brand_checkboxes_mob input:checked').each(function () {
                brands_mob.push($(this).attr('atr-url'));
            });
            var brand_path = get_url('brand', path_, brands_mob);
            var frag_mob = [];
            $('.frag_checkboxes_mob input:checked').each(function () {
                frag_mob.push($(this).attr('atr-frag'));
            });
            var frag_path = get_url('fragrance', path_, frag_mob);
            var size_mob = [];
            $('.size_checkboxes_mob input:checked').each(function () {
                size_mob.push($(this).attr('atr-size'));
            });
            var size_path = get_url('size', path_, size_mob);
            var type_mob = [];
            $('.type_checkboxes_mob input:checked').each(function () {
                var type_value = this.id.split('-');
                type_mob.push(type_value[0]);
            });
            var type_path = get_url('type', path_, type_mob);
            var min_range = $('#min_mob').html();
            var min_price = $('#min_price_mob').val();
            var max_range = $('#max_mob').html();
            var max_price = $('#max_price_mob').val();
            var price_path = Price_url(min_range, min_price, max_range, max_price);
            var new_path = path_mob + '?' + type_path + brand_path + frag_path + size_path + price_path;
//            console.log(new_path);
            window.location.href = new_path;
        });
        $('#slider-container_mob').slider({

            range: true,
            min: 0,
            max: 2000,
            values: [min_, max_],
            create: function () {
//              $("#amount").val("$299 - $1099");
                $("#min_mob").text(min_);
                $("#max_mob").text(2000);
            },
            slide: function (event, ui) {
                $('#min_mob').text(ui.values[0]);
                $('#max_mob').text(ui.values[1]);

            }
        });
        /*************************mobile filter end*************************/
    });
    var getUrlParameter = function getUrlParameter(sParam) {
        var datas = [];
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
                sURLVariables = sPageURL.split('&'),
                sParameterName,
                i;
        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');
            if (sParameterName[0] === sParam) {
                if (sParameterName[1] !== undefined) {
                    datas.push(sParameterName[1]);
                }
            }
        }
        return datas;
    }
    ;
    function checkparams(val_) {
        if (val_ && val_ != '') {
            var paramtersplit = val_.toString().split(',');
            $.each(paramtersplit, function (index, value) {
                if (document.getElementById(value)) {
                    $('#' + value).prop('checked', true);
//                    console.log(value);
                } else {
                }
            });
        }

    }
    function checkparams_mob(val_) {
        if (val_ && val_ != '') {
            var paramtersplit = val_.toString().split(',');
            $.each(paramtersplit, function (index, value) {
                if (document.getElementById(value)) {
                    $('#' + value + '-mob').prop('checked', true);
                } else {
                }
            });
        }

    }

    function paramss(name) {
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results == null) {
            return null;
        } else {
            return decodeURI(results[1]) || 0;
        }
    }


    function geturl(param, path, value) {
        if (window.location.href.indexOf("?") === -1) {
            var link = path + '?' + param + '=' + value;
        } else {
            if (window.location.href.indexOf(param) === -1) {
                var link = window.location.href + '&&' + param + '=' + value;
            } else {
                var pattern = new RegExp('\\b(' + param + '=).*?(&|#|$)');
                var link = window.location.href.replace(pattern, '$1' + value + '$2');
            }

        }
        return link;
    }
    function get_url(param, path, value) {
        if (typeof value !== 'undefined' && value.length > 0) {
            if (window.location.href.indexOf(param) === -1) {
                if (param !== 'type') {
                    var link = '&&' + param + '=' + value;
                } else {
                    var link = param + '=' + value;
                }
            } else {
                var pattern = new RegExp('\\b(' + param + '=).*?(&|#|$)');
                if (param !== 'type') {
                    var link_ = window.location.href.replace(pattern, '$1' + value + '$2');
                    var link = '&&' + param + '=' + GetURLParameter(link_, param);
                } else {
                    var link_ = window.location.href;
                    if (link_.indexOf(param) !== -1) {
                        var link = param + '=' + value;
                    }
                }
            }
            return link;
        } else {
            return '';
        }
    }
    function Price_url(min_range, min_price, max_range, max_price) {
        if (min_range !== min_price || max_range !== max_price) {
            var link = '&&minrange=' + min_range + '&&maxrange=' + max_range;
            return link;
        } else {
            return '';
        }
    }
    function GetURLParameter(link, sParam) {
        var sPageURL = decodeURIComponent(link);
        var sURLVariables = sPageURL.split('&');
        for (var i = 0; i < sURLVariables.length; i++)
        {
            var sParameterName = sURLVariables[i].split('=');
            if (sParameterName[0] === sParam)
            {
                return sParameterName[1];
            }
//            else if (sParam === 'type') {
//                console.log("type"+sParameterName[1]);
////                return sParameterName[1];
//            }
        }

    }
    function uncheckparams(val_, param, path) {
        if (val_ && val_ != '') {
            var paramtersplit = val_.toString().split(',');
            $.each(paramtersplit, function (index, value) {
                if (document.getElementById(value)) {
                    $('#' + value).prop('checked', false);
                } else {
                }
            });
            var new_path = path.replace(val_, '');
            if (window.location.href.indexOf(param) !== -1) {
                var charc = '&&' + param + '=';
                if (window.location.href.indexOf(charc) !== -1) {
                    var new_path = new_path.replace(charc, '');
                } else if (window.location.href.indexOf('?' + param + '=') !== -1) {
                    var new_path = new_path.replace('?' + param + '=', '');
                }
            }
            return new_path;
        }
    }
</script>
<script>
    $(document).ready(function () {

        $('.search-brand-key').on('keyup', function (e) {

            if ($(this).val()[0] === " ") {


            } else {
                if (e.keyCode != 40 && e.keyCode != 38 && e.keyCode != 27) {
                    var brandArray = new Array();
                    $("input[name=brand_list]").each(function () {
                        brandArray.push($(this).val());
                    });
                    $.ajax({
                        url: homeUrl + 'product/search-brand',
                        type: "POST",
                        data: {keyword: $(this).val(), brand_list: brandArray},
                        success: function (data) {
                            $('.search_brand').html(data);
                        }
                    });
                }
            }
        });
        $('#brand_search_submit').on('click', function (e) {
            var keyword = $('.search-brand-key').val().toLowerCase();
            var brandArray = new Array();
            $("input[name=brand_list]").each(function () {
                brandArray.push($(this).val());
            });
            $.ajax({
                url: homeUrl + 'product/search-brand',
                type: "POST",
                data: {keyword: keyword, brand_list: brandArray},
                success: function (data) {
                    $('.search_brand').html(data);
                    $('#' + keyword).trigger('click');
                }
            });
            e.preventDefault();
        });
    });
</script>
<script>
    $(function () {
        $('.categories-filter').on('hide.bs.collapse', function () {

            var button_id = $(this).attr('val');
            var title = $(this).attr('headtitle');
            $('#' + button_id).html('<b class="left-b">' + title + '</b><span class="right-span">+</span>');
        })
        $('.categories-filter').on('show.bs.collapse', function () {
            var button_id = $(this).attr('val');
            var title = $(this).attr('headtitle');
            $('#' + button_id).html('<b class="left-b">' + title + '</b><span class="right-span">-</span>');
        })

    })
</script>