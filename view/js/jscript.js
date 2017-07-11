function ShowMoreFooterSupportLink() {
    $(".colfoot li.showmore").remove();
    $(".colfoot li.hidden").removeClass("hidden")
}
$(document).ready(function() {
	$("#sync2 .item:last-child i").removeClass("arrowbar");
    function r() {
        var n = this.currentItem;
        $("#sync2").find(".owl-item").removeClass("synced").eq(n).addClass("synced");
		$("#sync2").find(".owl-item .item span").removeClass("arrowbarleft").eq(n).addClass("arrowbarleft");
        $("#sync2").data("owlCarousel") !== undefined && u(n)
    }

    function u(t) {
        var i = n.data("owlCarousel").owl.visibleItems,
            r = t,
            u = !1;
        for (var f in i) r === i[f] && (u = !0);
        u === !1 ? r > i[i.length - 1] ? n.trigger("owl.goTo", r - i.length + 2) : (r - 1 == -1 && (r = 0), n.trigger("owl.goTo", r)) : r === i[i.length - 1] ? n.trigger("owl.goTo", i[1]) : r === i[0] && n.trigger("owl.goTo", r - 1)
    }
    var i = $("#sync1"),
        n = $("#sync2"),
        t = $("#sync2 .item").length;
    i.owlCarousel({
        autoPlay: 3000,
        singleItem: !0,
        slideSpeed: 500,
        navigation: !0,
        pagination: !1,
        lazyLoad: !0,
        lazyEffect: !1,
        lazyFollow: !1,
        afterAction: r,
        responsiveRefreshRate: 200,
        stopOnHover: !0
    });
    n.owlCarousel({
        items: t,
        itemsDesktop: [1199, t],
        itemsDesktopSmall: [979, t],
        itemsTablet: [768, t],
        itemsMobile: [479, 4],
        pagination: !1,
        responsiveRefreshRate: 100,
        afterInit: function(n) {
            n.find(".owl-item").eq(0).addClass("synced")
        }
    });
    $("#sync2").on("click", ".owl-item", function(n) {
        var t, r;
        n.preventDefault();
        t = $(this).data("owlItem");
        i.trigger("owl.goTo", t);
        r = i.data("owlCarousel");
        r.stop()
    });
});
