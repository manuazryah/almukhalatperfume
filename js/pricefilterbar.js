function filterSystem(minPrice, maxPrice) {
    $("#computers div.system").hide().filter(function () {
        var price = parseInt($(this).data("price"), 10);
        return price >= minPrice && price <= maxPrice;
    }).show();
}