//$(document).ready(function () {
//    $("#add_category").click(function () {add_category
//$(document).on('click', '.add_category', function () {
//    $('#modal-1').modal('show', {backdrop: 'fade'});
//});

$(document).ready(function () {
    $('#createurl-search_tag').select2();
});

/****      Add Category     *****/
$(document).on('submit', '#add_category', function (event) {
    event.preventDefault();
    if (valid()) {
        var main_category = $('#product-main_category').val();
//        var main_category = $('input:radio[name="Product[main_category]"]:checked').val();
        var category = $('#subcategory-category').val();
        var code = $('#subcategory-categorycode').val();
        var form = $('.modal-title').attr('field_id');
//        addcategory(main_category,category,code);
        $.ajax({
            url: homeUrl + 'product/category/ajaxaddcategory',
            type: "post",
            data: {main_category: main_category, cat: category, code: code},
            success: function (data) {
                var $data = JSON.parse(data);
                if ($data.con === "1") {
                    $('#' + form).append($('<option value="' + $data.id + '" selected="selected">' + $data.category + '</option>'));
                    $('#product-prcat').append($('<option value="' + $data.id + '" selected="selected">' + $data.category + '</option>'));
//                    $('#'+form).val('');
//                    $('#subcategory-category_id').append($('<option value="' + $data.id + '" selected="selected">' + $data.category + '</option>'));
//                    $('#subcategory-category').val('');
                    $('#modal-1').modal('toggle');
                } else {
                    alert($data.msg['category'] + ' or ' + $data.msg['category_code']);
                }

            }, error: function () {

            }
        });
    } else {
        alert('Please fill the Field');
    }

//$("#add_category").on(submit(function () {

});
/****      Add Sub Category     *****/
$(document).on('submit', '#add_subcategory', function (event) {
    event.preventDefault();
    var main_category = $('#product-main_category').val();
//    var main_category = $('input:radio[name="Product[main_category]"]:checked').val();
    var category = $('#product-prcat').val();
    var catname = $('#product-prcat option:selected').text();
    var subcat = $('#product_subcat').val();
    var form = $('.modal-title').attr('field_id');
    $.ajax({
        url: homeUrl + 'product/sub-category/ajaxaddsubcat',
        type: "post",
        data: {main_category: main_category, cat: category, subcat: subcat},
        success: function (data) {
            var $data = JSON.parse(data);
            if ($data.con === "1") {
                $('#product-category').append($('<option value="' + category + '" selected="selected">' + catname + '</option>'));
                $('#product-subcategory').append($('<option value="' + $data.id + '" selected="selected">' + $data.subcategory + '</option>'));
                $('#modal-2').modal('toggle');
            } else {

            }

        }, error: function () {

        }
    })
});
/****      Add Unit     *****/
$(document).on('submit', '#add_unit', function (event) {
    event.preventDefault();
    var unit = $('#product_unit').val();
    var form = $('.modal-title').attr('field_id');
    $.ajax({
        url: homeUrl + 'product/unit/ajaxaddunit',
        type: "post",
        data: {unit: unit},
        success: function (data) {
            var $data = JSON.parse(data);
            if ($data.con === "1") {
                $('#' + form).append($('<option value="' + $data.id + '" selected="selected">' + $data.unit + '</option>'));
                $('#modal-3').modal('toggle');
            } else {

            }

        }, error: function () {

        }
    })
});
/************* tag category  ************************/
$(document).on('change', '#tag_category', function () {
    var cat_id = $(this).val();
    if (cat_id !== '') {
        $.ajax({
            url: homeUrl + 'product/master-searchtag-category/ajaxsearchtag',
            type: "post",
            data: {cat_id: cat_id},
            success: function (data) {
                var $data = JSON.parse(data);
                if ($data.con === "1") {
                    $($data.id).each(function (index, value) {
                        $('#product-search_tag' + ' option[value=' + value + ']').attr("selected", "selected");
                    });
                    var vals = $('#product-search_tag').val();
                    $('#product-search_tag').select2('val', vals);
                    $('#tag_category').val('');
                    $('#modal-7').modal('toggle');
                } else if ($data.con === "2") {

                }

            }, error: function () {

            }
        });
    }
});
/****      Add Search tag     *****/
$(document).on('submit', '#add_searchtag', function (event) {
    event.preventDefault();
    var tag = $('#search-tag').val();
    var form = $('.modal-title4').attr('field_id');
    $.ajax({
        url: homeUrl + 'product/master-search-tag/ajaxaddtag',
        type: "post",
        data: {tag: tag},
        success: function (data) {
            var $data = JSON.parse(data);
            if ($data.con === "1") {
                var newOption = $($data.tag);
                $('#product-search_tag').append(newOption);
                $($data.id).each(function (index, value) {
                    $('#product-search_tag' + ' option[value=' + value + ']').attr("selected", "selected");
                });
                var vals = $('#product-search_tag').val();
                $('#product-search_tag').select2('val', vals);
                $('#modal-4').modal('toggle');
            } else if ($data.con === "2") {
                $($data.id).each(function (index, value) {
                    $('#product-search_tag' + ' option[value=' + value + ']').attr("selected", "selected");
                });
                var vals = $('#product-search_tag').val();
                $('#product-search_tag').select2('val', vals);
                $('#modal-4').modal('toggle');
            }

        }, error: function () {

        }
    });


//$("#add_category").on(submit(function () {

});
/****      Add brand    *****/
$("#brand-image").change(function (e) {
    var form_data = new FormData();
    var ins = document.getElementById('brand-image').files.length;
    for (var x = 0; x < ins; x++) {
        form_data.append("files[]", document.getElementById('brand-image').files[x]);
    }
    showLoader();
    $.ajax({
        url: homeUrl + 'brand/ajaxaddimage', // Upload Script
        dataType: 'text', // what to expect back from the PHP script
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,
        type: 'post',
        success: function (data) {
            if (data === 0) {
                alert("error");
                hideLoader();
            } else {
                hideLoader();
            }
        },
        error: function (data) {
        }
    });
});


$(document).on('submit', '#add_brand', function (event) {
    event.preventDefault();
    var brand = $('#brand-name').val();
    var form = $('.modal-title5').attr('field_id');
    $.ajax({
        url: homeUrl + 'brand/ajaxaddbrand',
        type: "post",
        data: {brand: brand},
        success: function (data) {
            var $data = JSON.parse(data);
            if ($data.con === "1") {
                $('#' + form).append($('<option value="' + $data.id + '" selected="selected">' + $data.brand + '</option>'));
                $('#brand-name').val('');
                $('#modal-5').modal('toggle');
            } else if ($data.con === "0") {
                alert($data.error);
            }

        }, error: function () {

        }
    });
});
/****      Add Fragrance    *****/
$(document).on('submit', '#add_fragrance', function (event) {
    event.preventDefault();
    var fragrance = $('#fragrance-name').val();
    var form = $('.modal-title6').attr('field_id');
    $.ajax({
        url: homeUrl + 'fregrance/ajaxaddfragrance',
        type: "post",
        data: {fragrance: fragrance},
        success: function (data) {
            var $data = JSON.parse(data);
            if ($data.con === "1") {
                $('#' + form).append($('<option value="' + $data.id + '" selected="selected">' + $data.fragrance + '</option>'));
                $('#fragrance-name').val('');
                $('#modal-6').modal('toggle');
            } else if ($data.con === "0") {
                alert($data.error);
            }

        }, error: function () {

        }
    });



});

/****price>offerprice*****/
$('#product-offer_price').keyup(function () {
    $('#offer_price').addClass('hide');
    var offer = parseInt($(this).val());
    var price = parseInt($('#product-price').val());
    if (price != '') {
        if (offer >= price) {
            $('#product-offer_price').val('0.00');
            $('#offer_price').removeClass('hide');
        }
    }
});
/**/

$('.add_unit').click(function () {
    var unit = $(this).attr('attr_id');
    $('.modal-title').attr('field_id', unit);
});


$('#product-main_category').change(function () {
    var $ids = $(this).attr('id');
    var ids = $ids.split('-');
    var main_category = $(this).val();
//    var main_category = $('input:radio[name="Product[main_category]"]:checked').val();
    main_category_(main_category, ids);

});
$('#subcategory-main_category').click(function () {
    var $ids = $(this).attr('id');
    var ids = $ids.split('-');
    var main_category = $(this).val();
//    var main_category = $('input:radio[name="SubCategory[main_category]"]:checked').val();
    main_category_(main_category, ids);

});

$("#product-category").change(function () {
    $.ajax({
//            url: $base_url + 'event_item/select_event',
        url: homeUrl + 'product/product/subcategory',
        type: "post",
        data: {category: this.value},
        success: function (data) {

            $('#product-subcategory ').html("").html(data);
        }, error: function () {

        }
    });
});

$('.feedback').click(function () {
    $('.modal-title').html('');
    $('.modal-body').html('');
    var id = $(this).attr('id');
    var title = $('.title_' + id).html();
    var content = $('.content_' + id).attr('val');
    $('.modal-title').html(title);
    $('.modal-body').html(content);
});

/////////////////////////////////////////////////////
$(document).on('change', '#menumanagement-main_menu_arabic', function () {
    var main_id = $(this).val();
    showLoader();
    submenu(main_id, 'menumanagement');

});
$(document).on('change', '#createurl-main_menu', function () {
    var main_id = $(this).val();
    showLoader();
    submenu(main_id, 'createurl');

});
$('#menumanagement-sub_menu_id').on('change', function () {
//            var host = 'http://' + window.location.host + '/' + 'perfumedunia/category/';//for local
    var host = 'http://' + window.location.host + '/' + 'category/';//for server
    var submenu_id = $(this).val();
    $("#menumanagement-sub_menu_link").val('');
    showLoader();
    link(host, submenu_id, 'menumanagement');

});
$(document).on('change', '#createurl-sub_menu_id', function () {
//            var host = 'http://' + window.location.host + '/' + 'perfumedunia/category/';for local
    var host = 'http://' + window.location.host + '/' + 'product/index?category=';//for server
    var submenu_id = $(this).val();
    $("#createurl-sub_menu_link").val('');
    showLoader();
    link(host, submenu_id, 'createurl');

});
$(document).on('change', '#createurl-brand', function () {
    //          var host = 'http://' + window.location.host + '/' + 'perfumedunia/product/brand?brand=';//for local
    var host = 'http://' + window.location.host + '/' + 'product/index?brand=';//for server
    var brand = $('#createurl-brand :selected').text();
//    var brand = $(this).val();
    $("#createurl-sub_menu_link").val('');
    showLoader();
    $("#createurl-sub_menu_link").val(host + brand);
    hideLoader();

});

$(document).on('change', '#createurl-search_tag', function () {
//    var host = 'http://' + window.location.host + '/' + 'perfumedunia/product/index?keyword=';//for local
    var host = 'http://' + window.location.host + '/' + 'product/index?keyword=';//for server
    var tag = $('#createurl-search_tag :selected').text();
    showLoader();
    $("#createurl-sub_menu_link").val(host + tag);
    hideLoader();


});
$('body').on('change', '#url_type', function () {
    $("#createurl-sub_menu_link").val('');
    var type_id = $(this).val();
    if (type_id == 1) {
        jQuery(".brand_class").addClass('hide');
        jQuery(".category_class").removeClass('hide');
        jQuery(".search_tag").addClass('hide');
    } else if (type_id == 2) {
        jQuery(".brand_class").removeClass('hide');
        jQuery(".category_class").addClass('hide');
        jQuery(".search_tag").addClass('hide');
    } else if (type_id == 3) {
        jQuery(".search_tag").removeClass('hide');
        jQuery(".category_class").addClass('hide');
        jQuery(".brand_class").addClass('hide');
    }
});
/*************admin_status in order****************/
$('.admin_status').on('change', function () {
    var change_id = $(this).attr('id_');
    var admin_status = $('#status_' + change_id).val();
    var delivered_date = $('.delivered_date_' + change_id).val();
    if (delivered_date === "" && admin_status !== '4' && admin_status !== '5' && admin_status !== '6') {
        alert('Set Expected Delivery date');
    } else {
//        showLoader();
        if (admin_status === '6') {
            var order = $(this).attr('id_');
            $('.order_id').html(order);
            $('.return-order_id').val(order);
            $('#returnModal').modal('toggle');
        } else {
            change_admin_status(admin_status, change_id, delivered_date);
        }
    }
});
$('.return_approve').on('change', function () {
    var change_id = $(this).attr('id');
    var status = $(this).val();
    showLoader();
    $.ajax({
        url: homeUrl + 'order/order-master/change-return-approve',
        type: "post",
        data: {id: change_id, status: status},
        success: function (data) {
            if (data === '1') {
                alert('Approve status Changed Sucessfully');
                hideLoader();
            } else if (data === '2') {
                hideLoader();
            }
        }, error: function () {
            hideLoader();
        }
    });
});
/************26-7  starts******************/
//$(".admin_return").click(function () {
//    var order = $(this).attr('id');
//    $('.order_id').html(order);
//    $('.return-order_id').val(order);
//});
$('.return_confirm').on('click', function () {
    var reason = $('.return_reason').val();
    var order_id = $('.return-order_id').val();
    var admin_status = $('#status_' + order_id).val();
    var delivered_date = $('.delivered_date_' + order_id).val();
    console.log(admin_status + '/////' + order_id + '/////' + delivered_date);
    if (reason !== '') {
        showLoader();
        change_admin_status(admin_status, order_id, delivered_date);
        jQuery.ajax({
            type: "POST",
            url: homeUrl + 'order/order-master/return-order',
            data: {reason: reason, order_id: order_id},
            success: function (data) {
                var $data = JSON.parse(data);
                if ($data.msg === "success") {
                    window.location.href = homeUrl + "order/order-master";
                }
                hideLoader();
//
            }
        });
    } else {
        jQuery('.return_error').html('Please mention your reason');
    }
});
/////////////////////////////////////////////////////////
function change_admin_status(admin_status, change_id, delivered_date) {
    $.ajax({
        url: homeUrl + 'order/order-master/change-admin-status',
        type: "post",
        data: {status: admin_status, id: change_id, date: delivered_date},
        success: function (data) {
            if (data === '1') {
                alert('Admin Status Changed Sucessfully');
                if (admin_status === '4' || admin_status === '5') {
                    window.location.href = homeUrl + "order/order-master";
                }
                hideLoader();
            } else if (data === '2') {
                hideLoader();
            }
        }, error: function () {
            hideLoader();
        }
    });

}

//$('#product-sort').keyup(function () {
//    var sort = $(this).val();
//});


var valid = function () { //Validation Function - Sample, just checks for empty fields
    var valid;
    $("input").each(function () {
        if ($('#subcategory-category').val() === "") {
            var a = $(this).val();
            valid = false;
        }
    });
    if (valid !== false) {
        return true;
    } else {
        return false;
    }
}
//    });
//});

function link(host, submenu_id, form) {
    $.ajax({
        url: homeUrl + 'menumanagement/menu-management/select-categorycode',
        type: "post",
        data: {submenu_id: submenu_id},
        success: function (data) {
            $("#" + form + "-sub_menu_link").val(host + data);
            hideLoader();
        }, error: function () {
            hideLoader();
        }
    });
}
function submenu(main_id, form) {
    $.ajax({
        url: homeUrl + 'menumanagement/menu-management/select-sub-menu',
        type: "post",
        data: {main_cat: main_id},
        success: function (data) {
            $("#" + form + "-sub_menu_id").html(data);
            hideLoader();
        }, error: function () {
            hideLoader();
        }
    });
}

function main_category_(main_category, ids) {
    $.ajax({
        url: homeUrl + 'product/product/category',
//        url: 'category',
        type: "post",
        data: {main_cat: main_category},
        success: function (data) {
            if (ids[0] === 'subcategory') {
                var idr = '-category_id';
            } else {
                var idr = '-category';
            }
            $('#' + ids[0] + idr).html("").html(data);
            $('#product-prcat ').html("").html(data);
        }, error: function () {

        }
    }
    );
}
function showLoader() {
    $('.page-loading-overlay').removeClass('loaded');
}
function hideLoader() {
    $('.page-loading-overlay').addClass('loaded');
}