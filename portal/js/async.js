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