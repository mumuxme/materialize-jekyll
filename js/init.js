/**
 * Init javascript
 */

// material scrolltop
$(document).ready(function() {
    $('body').materialScrollTop({
        revealElement: 'header',
        revealPosition: 'bottom',
        onScrollEnd: function() {
            console.log('Scrolling End');
        }
    });
});


// table of content(toc) scroll to
$(document).ready(function() {
    $('.link-toc').click(function(){
        $('html, body').animate({
            scrollTop: $( $(this).attr('href') ).offset().top
        }, 500);
        return false;
    });
});


/**
 * Materialize js
 *
 */

// modal
$(document).ready(function(){
        $('.modal-trigger').leanModal();
});

// toc dropdown
$(document).ready(function(){
    $('.post-toc').dropdown({
        inDuration: 300,
        outDuration: 225,
        constrain_width: true,
        hover: true,
        gutter: 0,
        belowOrigin: false,
        alignment: 'left'
      }
    );
});

// scrollspy
$(document).ready(function(){
    $('.scrollspy').scrollSpy();
});

