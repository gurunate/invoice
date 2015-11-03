/**
 * @author Nate Johnson
 * @type {*|exports|module.exports}
 */

var restify = require('restify');

var server = restify.createServer({
    name: 'invoices',
    version: '1.0.0'
});

server.use(restify.acceptParser(server.acceptable));
server.use(restify.queryParser());
server.use(restify.bodyParser());

server.get('/invoice/:invoice-no', function (req, res, next) {
    //res.send(req.params);
    var invoice = { blah: "whee" };
    res.send(invoice);
    return next();
});

server.listen(8080, function () {
    console.log('%s listening at %s', server.name, server.url);
});