const express = require ('express');

const server = express();


server.get('/', function(req, res) {
    res.send('<h1>Login</h1>');
});

server.get('/cadastro', function(req, res) {
    res.send('<h1>Cadastro</h1>');
});

server.get('/cadastro/', function(req, res) {
    res.send('<h1>Login depois de cadastro</h1>');
});

server.get('/home', function(req, res) {
    res.send('<h1>Informações sobre o site</h1>');
});

server.get('/perfil/{id}', function(req, res) {
    res.send('<h1>Perfil</h1>');
});

server.get('/perfil/{id}/alterarDados', function(req, res) {
    res.send('<h1>Alterar dados da conta</h1>');
});

server.get('/monitoriasInscritas', function(req, res) {
    res.send('<h1>Monitorias Inscritas</h1>');
});

server.get('/monitorias', function(req, res) {
    res.send('<h1>Monitorias</h1>');
});

server.get('/chat', function(req, res) {
    res.send('<h1>Chat de dúvidas</h1>');
});

server.listen(3000);
