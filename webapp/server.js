/**
 * Created by natejohnson on 11/3/15.
 */


var Hapi = require('hapi');
var Hoek = require('hoek');

var server = new Hapi.Server();

server.register(require('vision'), function (err) {

    Hoek.assert(!err, err);

    server.views({
        engines: {
            html: require('handlebars')
        },
        relativeTo: __dirname,
        path: 'views',
        layout: 'default',
        layoutPath: './views/layout',
        helpersPath: './views/helpers'

    });
});

server.connection({port: 3000});

server.route({
    method: 'GET',
    path: '/',
    handler: function (request, reply) {
        //reply('Hello, world!');
        var data = {
            title: 'Hello',
            message: 'World'
        };

        //reply.view('index', data, { layout: 'crazy' });
        reply.view('index', data);
    }
});

//server.route({
//    method: 'GET',
//    path: '/{name}',
//    handler: function (request, reply) {
//        reply('Hello, ' + encodeURIComponent(request.params.name) + '!');
//    }
//});

server.start(function () {
    console.log('Server running at:', server.info.uri);
});