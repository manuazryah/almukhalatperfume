$(document).ready(function () {

    /*
     * Add product to cart
     * parameeters producct canonical name and quantity
     */

    $(document).on('click', '.add-cart', function (e) {
        e.preventDefault();
        var canname = $(this).attr('pro_id');
        var qty = $('#quantity').val();
        var type = 1;
        $.ajax({
            type: "POST",
            url: homeUrl + 'cart/buynow',
            data: {product: canname, qty: qty, type: type},
            success: function (data)
            {
                if (data != 0) {
                    var res = $.parseJSON(data);
                    $('.alert_' + canname).removeClass('hide');
                    $('.shopping-cart-items').html(res.result['content']);
                    $('.cart_count').text(res.result['count']);
                    setTimeout(function () {
                        $('.cartlist-popup').addClass('hide');
                    }, 3000);
                    setTimeout(function () {
                        $('.cartlist-popup-dtl').addClass('hide');
                    }, 3000);
                }
            }
        });
    });

    $(document).on('click', '.remove-wish-list', function (e) {
        var answer = confirm("Are you sure want to remove?");
        if (answer)
        {
            var canname = $(this).attr('id');
            var list_id = $(this).attr('data-val');
            $.ajax({
                url: homeUrl + 'cart/remove-wishlist',
                type: "POST",
                data: {wish_list_id: list_id},
                success: function (data) {
                    $('#wishlist_' + canname).remove();
                    if (data == 0) {
                        location.reload();
                    }
                }
            });
        }
    });

    $(document).on('click', '.add_to_wish_list', function (e) {
        e.preventDefault();
        var canname = $(this).attr('pro_id');
        $.ajax({
            type: "POST",
            url: homeUrl + 'ajax/savewishlist',
            data: {product: canname},
            success: function (data)
            {
                if (data != 0) {
                    $('.wishalert_' + canname).removeClass('hide');
                    if (data == 1) {
                        $(".wishlist-popup-dtl").html('<i class="fa fa-check" aria-hidden="true"></i>Successfully added to wishlist.');
                    } else if (data == 2) {
                        $(".wishlist-popup-dtl").html('Please login for wishlisting a product');
                    }
                    setTimeout(function () {
                        $('.wishlist-popup-dtl').addClass('hide');
                    }, 2500);
                }
            }
        });
    });

    /*
     * Remove product from cart
     */

    $(document).on('click', '.remove_cart_product', function (e) {
        e.preventDefault();
        var answer = confirm("Are you sure want to remove?");
        if (answer)
        {
            var id = $(this).attr('data-product_id');
            var count = $(".cart_count").text();
            $.ajax({
                url: homeUrl + 'cart/remove_cart',
                type: "post",
                data: {id: id},
                success: function (data) {
                    var $data = JSON.parse(data);
                    if ($data.msg === "success") {
                        $("#" + id).remove();
                        count = count - 1;
                        $('.cart_count').text(count);
                        if (count == 0) {
                            $("#checkout-links").remove();
                        }
                    }
                }
            });
        }
    });

    /*
     * Buy a product
     */

    $(document).on('click', '.buy-now', function (e) {
        e.preventDefault();
        var canname = $(this).attr('pro_id');
        var qty = $('#quantity').val();
        var type = 2;
        $.ajax({
            type: "POST",
            url: homeUrl + 'cart/buynow',
            data: {product: canname, qty: qty, type: type},
            success: function (data)
            {
                if (data != 0) {
                }
            }
        });
    });

    /*
     * This function remove products from cart page
     */

    $(document).on('click', '.remove_cart', function (e) {
        e.preventDefault();
        var answer = confirm("Are you sure want to remove?");
        if (answer)
        {
//            showLoader();
            if ($("#gift-wrap").prop('checked') == true) {
                var gift_wrap = 1;
            } else {
                var gift_wrap = 0;
            }
            var giftwrap_value = $('.giftwrap_value').html();
            var ship_charge = $('.min_ship_amount').html();
            var $id = $(this).attr('data-product_id');
            var $count = $('.cart_count').html();
            $('.error_' + $id).html('');
            $.ajax({
                url: homeUrl + 'cart/cart_remove',
                type: "post",
                data: {id: $id, count: $count},
                success: function (data) {
                    var $data = JSON.parse(data);
                    if ($data.msg === "success") {
                        $('.tr_' + $id).remove();
                        getcart();
                        $('.cart_subtotal').text('AED ' + $data.subtotal);
                        $('.shipping-cost').html('AED ' + $data.shipping);
                        if ($data.shipping === '0.00') {
                            $('.free_shipping').removeClass('hide');
                            $('.shipping_').addClass('hide');
                        } else {
                            $('.free_shipping').addClass('hide');
                            $('.shipping_').removeClass('hide');
                        }
                        $('.grand_total').html('AED ' + $data.grandtotal);
                        $('.grand_total_value').val($data.grandtotal);
                        var subtotal = $data.subtotal;
                        if (gift_wrap === 1) {
                            var result = +$data.subtotal + parseFloat(giftwrap_value);
                            var grand_total = parseFloat($data.grandtotal) + parseFloat(giftwrap_value);
//                    $('.cart_subtotal').html('AED ' + result.toFixed(2));
                            var subtotal = result;
                            $('#subb_total').val(result);
                            $('.grand_total').html('AED ' + grand_total.toFixed(2));
                            $('.grand_total_value').val(grand_total);
                        }
                        if (parseFloat(ship_charge) > parseFloat(subtotal)) {
                            $('.free-shipping').removeClass('hide');
                            var balance_ship = ship_charge - subtotal;
                            $('.remain_freeship').html(balance_ship);
                        } else {
                            $('.free-shipping').addClass('hide');
                        }
                        $('#cart_count').val($data.count);
                        $('.cart_count').html($data.count);
                        $.pjax.reload({container: '#shopping_cart_id'});
//                        hideLoader();
                    } else {
                        location.reload();
                    }
                }, error: function () {
                    $('.error_' + $id).html('Cannot Find');
                }
            });
        }
    });

    /*
     * This function for apply coopen code
     */

    $('.apply-coupen').on('click', function (e) {
        e.preventDefault();
        var code = $('#coupon_code').val();
        var order_id = $('#master_order_id').val();
        var promotion_amount = $('#promotion-code-amount').val();
        $.ajax({
            url: homeUrl + 'cart/promotion-check',
            type: "POST",
            data: {code: code, promotion_amount: promotion_amount, order_id: order_id},
            success: function (data) {
                $('.help-block').remove();
                var res = $.parseJSON(data);
                if (res.result['msg'] == 6) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">In order to avail the benefits of this promotional code, please Login/Sign Up.</div>');
                } else if (res.result['msg'] == 1) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">Invalid Code! Please try another one.</div>');
                } else if (res.result['msg'] == 2) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">Code validity expired !</div>');
                } else if (res.result['msg'] == 3) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">Sorry!! You are already used this code!</div>');
                } else if (res.result['msg'] == 4) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">Invalid Code! Please try another one.</div>');
                } else if (res.result['msg'] == 5) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">This code is only when purchase items above AED  ' + res.result['amount'] + '</div>');
                } else if (res.result['msg'] == 7) {
                    $('.help-block').hide();
                    var codes = $('#promotion-codes').val();
                    if (codes && codes != '') {
                        var promo_values = $('#promotion-codes').val() + ',' + res.result['discount_id'];
                    } else {
                        var promo_values = res.result['discount_id'];
                    }
                    $('#promotion-codes').val(promo_values);
                    $('#coupon_code').val('');
                    $('#promotion-code-amount').val(res.result['total_promotion_amount']);
                    $('#promotions-listing').append('<p id="disc_' + res.result['discount_id'] + '">Coupon code  ' + res.result['code'] + ' is added with AED ' + res.result['amount'] + ' <a class="promotion-remove" title="Remove" id="' + res.result['discount_id'] + '" type="' + res.result['temp_session'] + '"><i class="far fa-times-circle"></i></a></p>');
                    $('.cart-promotions').show();
                    $('.promotion_discount').text('AED ' + res.result['total_promotion_amount']);
                    $('.checkout-total').html('AED ' + res.result['overall_grand_total']);
                } else if (res.result['msg'] == 8) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">Sorry!! You are already used this code!</div>');
                } else if (res.result['msg'] == 9) {
                    $("#coupon-code-error").append('<div class="help-block" style="color:red">You can use only one coupon code</div>');
                }


            }
        });
    });

    $(document).on('click', '.promotion-remove', function () {

        var id = $(this).attr('id');
        var temp_id = $(this).attr('type');
        var promo_codes = $('#promotion-codes').val();
        var order_id = $('#master_order_id').val();
        $.ajax({
            url: homeUrl + 'cart/promotion-remove',
            type: "POST",
            data: {id: id, promo_codes: promo_codes, temp_id: temp_id, order_id: order_id},
            success: function (data) {
                var obj = $.parseJSON(data);
                $('#disc_' + id).remove();
                $('#promotion-codes').val(obj.code);
                $('#promotion-code-amount').val(obj.total_promotion_amount);
                if (obj.total_promotion_amount > 0) {
                    $('.cart-promotion').show();
                    $('.promotion_discount').text(obj.total_promotion_amount);
                } else {
                    $('.cart-promotions').hide();
                }
                $('.checkout-total').html('<span class=""> AED </span>' + obj.overall_grand_total);
            }
        });
    });

    $(document).on('change', '.gift-wrap', function (e) {
        var id = $(this).attr('id');
        var giftwrap = $('.giftwrap_value').html();
        var ship_charge_gift = $('.min_ship_amount').html();
        var grand = $('.grand_total_value').val();
        if ($("#" + id).prop('checked') == true) {
            $('.gift-wrap').prop('checked', true);
            var value = 1;
        } else {
            $('.gift-wrap').prop('checked', false);
            var value = 0;
        }

        var subtotal = $('#subb_total').val();
        $.ajax({
            url: homeUrl + 'cart/set-gift-wrap',
            type: "post",
            data: {value: value},
            success: function (data) {
                if (data === '1') {
                    var result = parseFloat(subtotal) + parseFloat(giftwrap);
                    var grand_total = parseFloat(grand) + parseFloat(giftwrap);
                    $('.gift_wrapp').val(1);
                    $('#subb_total').val(result);
                    $('.grand_total').html('AED ' + grand_total.toFixed(2));
                    $('.grand_total_value').val(grand_total);

                } else {
                    var result = subtotal - parseFloat(giftwrap);
                    var grand_total = parseFloat(grand) - parseFloat(giftwrap);
                    $('.gift_wrapp').val(0);
                    $('#subb_total').val(result);
                    $('.grand_total').html('AED ' + grand_total.toFixed(2));
                    $('.grand_total_value').val(grand_total);
                }

            }, error: function () {
            }
        });
    });

    $('.cart_quantity').change(function () {
        var quantity = $(this).val();
        var $ids = $(this).attr('id');
        var ids = $ids.split('_');
        var id = ids['1'];
        var $count = $('#cart_count').val();
        if (quantity != '' && parseInt(quantity) > '0') {
            findstock(id, quantity);
            updatecart(id, quantity, $count);
            PromotionQuantityChange();
        } else if (quantity != '') {
            $('#quantity_' + id).val('1');
        }
    });

    /************ Serach ****************/
    $('.search-keyword').on('keyup', function (e) {
        var dropdown = $(this).attr('drop');
        if ($(this).val()[0] === " ") {

        } else {
            if (e.keyCode != 40 && e.keyCode != 38 && e.keyCode != 27) {
                $.ajax({
                    url: homeUrl + 'product/search-keyword',
                    type: "POST",
                    data: {keyword: $(this).val()},
                    success: function (data) {
                        $('.' + dropdown).html(data);
                    }
                });
            }
        }
    });

    $(".order_return").click(function () {
        var order = $(this).attr('id');
        var order_id = $(this).attr('ordr');
        $('.order_id').html(order);
        $('.return-order_id').val(order_id);
    });

    $(document).on('click', '.return_confirm', function (e) {
        e.preventDefault();
        var reason = $('.return_reason').val();
        var order_id = $('.return-order_id').val();
        alert(reason);
        alert(order_id);
        if (reason !== '') {
            $.ajax({
                type: "POST",
                url: homeUrl + 'myaccounts/my-orders/return-order',
                data: {reason: reason, order_id: order_id},
                success: function (data) {
                    var $data = JSON.parse(data);
                    if ($data.msg === "success") {
                        window.location.href = homeUrl + "myaccounts/my-orders";
                    }
                }
            });
        } else {
            $('.return_error').html('Please mention your reason');
        }
    });

    $(".cancel_order").click(function () {
        var order_id = $(this).attr('ordr');
        $('.cancel-order_id').val(order_id);
    });
    $('.cancel_confirm').on('click', function () {
        $('.return_error').html('');
        var reason = $('.cancel_reason').val();
        var order_id = $('.cancel-order_id').val();
        if (reason !== '') {
            $.ajax({
                type: "POST",
                url: homeUrl + 'myaccounts/my-orders/cancel-order',
                data: {reason: reason, order_id: order_id},
                success: function (data) {
                    var $data = JSON.parse(data);
                    if ($data.msg === "success") {
                        window.location.href = homeUrl + "myaccounts/my-orders";
                    }
                }
            });
        } else {
            $('.return_error').html('Please mention your reason');
        }
    });

    /********* selected li value to textbox **********/
    $(document).on('mousedown', '.search-dropdown li', function () {
        $('.search-dropdown').hide();
        $('.search-keyword').val($(this).attr('id'));
        $('form.product-search-box').submit();
    });

    /********************li navigation keys ***************/
    $('.search-keyword').on('keydown', function (e) {

        if (e.keyCode == 40) { //down

            var selected = $(".search-selected");
            $('.search-dropdown li').removeClass('search-selected');
            if (selected.next().length == 0) {
                selected.siblings().first().addClass('search-selected');
            } else {
                selected.next().addClass('search-selected');
            }
        } else if (e.keyCode == 38) { //up

            var selected = $(".search-selected");
            $('.search-dropdown li').removeClass('search-selected');
            if (selected.prev().length == 0) {
                selected.siblings().last().addClass('search-selected');
            } else {
                selected.prev().addClass('search-selected');
            }
        } else if (e.keyCode == 27) { //escape

            $('.search-dropdown').hide();
            $('.search-keyword').val('');

        } else if (e.keyCode == 13) { //enter

            var value = $('.search-selected').attr('id');
            $('.search-dropdown').hide();
            if (value) {
                $('.search-keyword').val(value);
            } else {
                $('.search-keyword').val($(this).val());
            }
            $('form.product-search-box').submit();
            e.preventDefault();
        }

        var nav = $('.search-dropdown');
        if (nav.length) {
            $(".search-dropdown").scrollTop(0);//set to top
            $(".search-dropdown").scrollTop($('.search-selected:first').offset().top - $(".search-dropdown").height())
        }

    });


});

function findstock(id, quantity) {
    $.ajax({
        type: "POST",
        url: homeUrl + 'cart/findstock',
        data: {cartid: id, quantity: quantity},
        success: function (data) {
            var $data = JSON.parse(data);
            if ($data.msg === "success") {
                $('#total_' + id).text('AED ' + $data.total);
                $('.quantity_' + id).val($data.quantity);
            } else {
                location.reload();
            }
        }
    });
}

function updatecart(id, quantity, count) {
    var ship_charge = $('.min_ship_amount').html();
    if ($("#gift-wrap").prop('checked') == true) {
        var gift_wrap = 1;
    } else {
        var gift_wrap = 0;
    }
    var giftwrap_value = $('.giftwrap_value').html();
    $.ajax({
        type: "POST",
        url: homeUrl + 'cart/updatecart',
        data: {cartid: id, quantity: quantity, count: count},
        success: function (data) {
            var $data = JSON.parse(data);
            if ($data.msg === "success") {
                $("#cart_count").val($data.cart_count);
                $('.cart_subtotal').html('AED ' + $data.subtotal);
                $('.shipping-cost').html('AED ' + $data.shipping);
                $('.grand_total').html('AED ' + $data.grandtotal);
                $('.grand_total_value').val($data.grandtotal);
                $('#subb_total').val($data.subtotal);
//                var subtotal = $data.subtotal;
                if (gift_wrap == '1') {
                    var result = +$data.subtotal + parseFloat(giftwrap_value);
                    var grand_total = parseFloat($data.grandtotal) + parseFloat(giftwrap_value);
                    $('.cart_subtotal').html('AED ' + result.toFixed(2));
//                    var subtotal = result;
                    $('#subb_total').val(result);
                    $('.grand_total').html('AED ' + grand_total.toFixed(2));
                    $('.grand_total_value').val(grand_total);
                }
                hideLoader();
            }
        }
    });
}
function PromotionQuantityChange() {
    var promo_codes = $('#promotion-codes').val();
    $.ajax({
        url: homeUrl + 'cart/promotion-quantity-change',
        type: "POST",
        data: {promo_codes: promo_codes},
        success: function (data) {

            var obj = $.parseJSON(data);
            $('#promotions-listing').html('');

            $.each(obj.promotion, function (index, value) {
                $('#promotions-listing').append('<p id="disc_' + value.discount_id + '">Coupon code  ' + value.code + ' is added with ' + value.amount + ' AED <a class="promotion-remove" title="Remove" id="' + value.discount_id + '"  type="' + value.temp_session + '"><i class="far fa-times-circle"></i></a></p>');
            });
            $('#promotion-codes').val(obj.code);
            $('#promotion-code-amount').val(obj.promotion_total_discount);
            if (obj.promotion_total_discount > 0) {
                $('.cart-promotion').show();
                $('.promotion_discount').text(obj.promotion_total_discount);
            } else {
                $('.cart-promotion').hide();
            }
            $('.grand_total').html('<span class="woocommerce-Price-currencySymbol"> AED </span>' + obj.overall_grand_total);
        }
    });
}

function getcart() {

    $.ajax({
        type: "POST",
        cache: 'false',
        async: false,
        url: homeUrl + 'cart/getcart',
        data: {}
    }).done(function (data) {
        if (data != '') {
            var res = $.parseJSON(data);
            $('.shopping-cart-items').html(res.result['content']);
            $('.cart_count').text(res.result['count']);
        }
    });
}