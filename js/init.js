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


// materialize modal
$(document).ready(function(){
        $('.modal-trigger').leanModal();
});

//Initialization for dropdowns
$(document).ready(function(){
    $('.dropdown-button').dropdown({
        inDuration: 300,
        outDuration: 225,
        constrain_width: false, // Does not change width of dropdown to that of the activator
        hover: false,           // Activate on hover
        gutter: 0,              // Spacing from edge
        belowOrigin: true,      // Displays dropdown below the button
        alignment: 'left'       // Displays dropdown with edge aligned to the left of button
      }
    );
});

// scrollspy
$(document).ready(function(){
  $('.scrollspy').scrollSpy();
});
