$(document).ready(function() {      
    var isMobile = window.matchMedia("only screen and (max-width: 760px)");

    if (isMobile.matches) {
        $('#mob-cont').removeClass('container');
        $('#mob-depth').removeClass('z-depth-2');
        $('#mob-depth-c').removeClass('z-depth-2');       // post comment
    }
});

