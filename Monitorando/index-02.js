const express = require('express'); /*importando modulo express*/
const handlebars = require('express-handlebars')
const path = require('path');

const server = express();

server.use(express.static(path.join(__dirname,'/public')));
server.engine('handlebars',handlebars({defaultLayout: 'main'}));
server.set('view engine', 'handlebars');

server.get('/', function(req, res){ 
    res.render('home');
});
server.get('/servicos', function(req, res){ 
    res.render('servico');
});
server.get('/contatos', function(req, res){ 
    res.render('contato');
});



/*localhost:3000*/
server.listen(3000); 