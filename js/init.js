
/* Material scrolltop */

$(document).ready(function() {
  $('body').materialScrollTop({
    revealElement: 'header',
    revealPosition: 'bottom',
    onScrollEnd: function() {
      console.log('Scrolling End');
    }
  });
});


/* Materialize */

// modal
$(document).ready(function(){
   // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
   $('.modal').modal();
 });

// toc dropdown
$(document).ready(function(){
  $('.post-toc').dropdown({
    inDuration: 300,
    outDuration: 225,
    constrainWidth: true,
    hover: true,
    gutter: 0,
    belowOrigin: false,
    alignment: 'left'
  });
});

// scrollspy
$(document).ready(function(){
  $('.scrollspy').scrollSpy({
    scrollOffset: 150,
  });
});

// SideNav
$(".button-collapse").sideNav({
    menuWidth: 240,
    //edge: 'right', // Choose the horizontal origin
    closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
});
$(".button-collapse").off("click").sideNav();
// Initialize collapsible (uncomment the line below if you use the dropdown variation)
//$('.collapsible').collapsible();



