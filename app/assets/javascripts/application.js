// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$( document ).ready(function() {
	
   jQuery(".text_review").each(function(){
    var review_full = jQuery(this).html();
    var review = review_full;
 
    if( review.length > 400 )
    {
        review = review.substring(0, 400);
        jQuery(this).html( review + '<div class="read_more"> читать полностью &rarr;</div>' );
    }
    jQuery(this).append('<div class="full_text" style="display: none;">' + review_full + '</div>');
});
 
jQuery(".read_more").click(function(){
    jQuery(this).parent().html( jQuery(this).parent().find(".full_text").html() );
});

// more photo


jQuery('.left_side').on('click', '.photos', function() {
    var src = jQuery(this).attr('src');
    jQuery(this).parent().parent().closest('.left_side').find('.first_foto img').attr('src', src);
});

});


  