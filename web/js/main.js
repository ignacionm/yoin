$(document).ready(function () {
    setTimeout(function () {
        $('.loader').addClass('hidden').delay(200).remove();
        $('.slide-in').each(function() {
            $(this).addClass('visible');
        });
    }, 1900);

    $('#birthdate').datepicker({});

    $(".owl-carousel.match").owlCarousel({
        items: 4,
        loop: true,
        margin: 25,
        animateIn: true,
        animateOut: true,
        callbacks: true
    });

    $(".owl-carousel.request").owlCarousel({
        items: 3,
        loop: true,
        margin: 25,
        animateIn: true,
        animateOut: true
    });

    $("#pipe").change(function() {
        if(this.checked) {
            setTimeout(function () {
                window.location = 'matchmakingp.jsp'
            }, 500)
        } else {
            setTimeout(function () {
                window.location = 'matchmaking.jsp'
            }, 500)
        }
    });

    let carouselPhoto = $("#carouselCardPhoto");

    let activeID = parseInt(carouselPhoto.data('carouselActiveId'));

    carouselPhoto.attr('src', carouselInfo[activeID][2]).attr('alt', carouselInfo[activeID][0]);
    $("#carouselCardName").html(carouselInfo[activeID][0]);
    $("#carouselCardDescription").html(carouselInfo[activeID][1]);

    $('.matchSecondaryImage').click(function () {
        let lastActiveID = activeID;
        activeID = parseInt($(this).data('carouselId'));

        $(this).attr('src', carouselInfo[lastActiveID][2]).attr('alt', carouselInfo[lastActiveID][0]);
        $(this).data('carouselId', lastActiveID);

        carouselPhoto.attr('src', carouselInfo[activeID][2]).attr('alt', carouselInfo[activeID][0]);
        carouselPhoto.data('carouselActiveId', activeID);
        $("#carouselCardName").html(carouselInfo[activeID][0]);
        $("#carouselCardDescription").html(carouselInfo[activeID][1]);
    });
});