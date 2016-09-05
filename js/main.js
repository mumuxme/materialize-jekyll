/**
 * Change mobile style
 */
$(document).ready(function() {
    var isMobile = window.matchMedia("only screen and (max-width: 760px)");

    if (isMobile.matches) {
        $('#mob-cont').removeClass('container');
        $('#mob-depth-2').removeClass('z-depth-2');
        $('#mob-depth-c').removeClass('z-depth-2');       // post comment
    }
});


/**
 * `Category` expand
 */
function expandAll() {
  $(".collapsible-header").addClass("active");
  $(".collapsible").collapsible({ accordion: true });
}

function collapseAll() {
  $(".collapsible-header").removeClass("active");
  $(".collapsible").collapsible({ accordion: true });
}

