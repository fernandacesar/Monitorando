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

server.get('/perfil/:id', function(req, res) {
    const perfis = [];
    perfis[0] = {nome: 'Ana', status: 'Aluno' } //pode criar objetos sem ter a classe
    perfis[1] = {nome: 'Damis', status: 'Aluno/Monitor' }
    perfis[2] = {nome: 'FCR', status: 'Aluno/Monitor' }
    perfis[3] = {nome: 'Fer', status: 'Aluno' }

    
    const id = req.params.id;

    let dados = '';
    if(perfis[id] == undefined){
        dados = 'Perfil não encontrado.';
    }else{
        dados = perfis[id].nome + ', ' + perfis[id].status;        
    }

    res.send('<h1>Perfil</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/alterarDados', function(req, res) {
    const perfis = [];
    perfis[0] = {nome: 'Ana', status: 'Aluno'}
    perfis[1] = {nome: 'Damis', status: 'Aluno/Monitor'}
    
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Perfil não encontrado.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('Alterar dados de perfil<br>'
        + '<input type="text" value= ' + perfis[id].nome + '>'
        + '<input type="submit" value="Salvar">');
});

server.get('/monitoriasInscritas/:idInscricao', function(req, res) {
    const usuarios = [];
    const monitorias = [];
    const inscricoes = [];

    usuarios[0] = {nome: 'Ana'}
    usuarios[1] = {nome: 'Fer'}

    monitorias[0] = {conteudo: 'Números complexos'}
    monitorias[1] = {conteudo: 'Conjuntos numéricos'}

    inscricoes[0] = {idUsuario: usuarios[0], idMonitoria: monitorias[1]}
    
    const idInscricao = req.params.idInscricao;

    let dados = '';

    if(inscricoes[idInscricao] == undefined){
        dados = "Inscrições não encontradas.";
    }else{
        dados = inscricoes[idInscricao].idInscricao + inscricoes[idInscricao].idMonitoria;
    }
    res.send('<h1>' + dados + '</h1>');
});

server.get('/monitorias', function(req, res) {
    res.send('<h1>Monitorias</h1>');
});

server.get('/chat', function(req, res) {
    res.send('<h1>Chat de dúvidas</h1>');
});

server.listen(3000);
