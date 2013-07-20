define(['jquery', 'can', 'js/controls/invoice.js', 'domReady!'], function($, can, Invoice) {
	return can.Control({
		init : function(el) {
			console.debug('el', el);
			
			var i = new Invoice('', {id : 5});
		}
	});
});