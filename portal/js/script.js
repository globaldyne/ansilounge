$(document).ready( function() { 
$(".ajax").colorbox();
$(".inline").colorbox({ inline:true, width:"25%" });
$(".iframe").colorbox({iframe:true, width:"70%", height:"70%"}); 
$('[title!=""]').qtip({ style: { classes: 'qtip-dark'} });


	
function blink(selector){
	$(selector).fadeOut('slow', function(){
   	 		$(this).fadeIn('slow', function(){
        		blink(this);
    		});
		});
	}

blink('.blink');

	
}); // document.ready

(function($) {
    $(function() {
        $('[data-async-url]').each(function() {
            var $this = $(this),
                url = $this.data('async-url');
			    $.get(url, function(data) {
                	$this.replaceWith(data);
                });
        });
    });

})(jQuery);
$(document).ready(function(){
	createChartJobs();
	createChartHosts();
});