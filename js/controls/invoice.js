define(['jquery', 'can', 'domReady!'], function($, can) {
	return can.Control({
		defaults : {
			id : null
		}
	},{
		init : function(el) {
			console.debug('el', el);
			if (this.options.id) {
				// TODO load model
				console.debug('will load invoice', this.options.id);
			}
		}, 
		save : function() {
			// TODO implement

		},
		remove : function () {
			// TODO implement
			
		},
		update : function() {
			// TODO implement
			
		}
	});
});