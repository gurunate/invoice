require.config({
	baseUrl : '/invoice/js',
	paths : {
		jquery : 'libs/jquery-1.10.2.min',
		jquerypp : 'libs/jquerypp',
		domReady : 'libs/requirejs/domReady',
		can : 'libs/can'
	}
});

require(['js/controls/app.js'], function(App) {
	new App('#app');
});
