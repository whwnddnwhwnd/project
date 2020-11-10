 $(document).ready(function() {
    	   //menu left toggle

    	   $('.toggle-nav').click(function() {
    	     // alert('done');
    	     $this = $(this);
    	     $nav = $('.nice-nav');
    	     //$nav.fadeToggle("fast", function() {
    	      //  $nav.slideLeft('250');
    	   //  });
    	     
    	     $nav.toggleClass('open');

    	   });
    	   $('.body-part').click(function(){
    	     $nav.addClass('open');
    	   });
    	   //  $nav.addClass('open');

    	   //drop down menu
    	   $submenu = $('.my-page-ul');
    	   $('.my-page .toggle-right').on('click', function(e) {
    	     e.preventDefault();
    	     $this = $(this);
    	     $parent = $this.parent().next();
    	     // $parent.addClass('active');
    	     $tar = $('.my-page-ul');
    	     if (!$parent.hasClass('active')) {
    	       $tar.removeClass('active').slideUp('fast');
    	       $parent.addClass('active').slideDown('fast');

    	     } else {
    	       $parent.removeClass('active').slideUp('fast');
    	     }

    	   });

    	 });