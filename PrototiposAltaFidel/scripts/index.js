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

server.get('/perfil/:id/salvarAlteracao',function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Salvar alteração';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Salvar Alteração</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/solicitarLicenca',function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Solicitar Licença.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Solicitar Licença</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/solicitarLicenca/solicitar',function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Solicitar.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Solicitar</h1>'
        + '<h3>' + dados +'</h3>');
});
server.get('/perfil/:id/tornarseMonitor',function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Tornar-se Monitor.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Tornar-se Monitor</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/cadastrarMonitorias', function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Cadastrar Monitorias.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Cadastrar Monitorias</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/cadastrarMonitorias/cadastro', function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Cadatro Monitoria.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Cadatro Monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});



server.get('/perfil/:id/cancelarMonitoria', function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Cancelar Monitoria.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Cancelar Monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/detalhesMonitoria', function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'detalhesMonitoria.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>detalhesMonitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/detalhesMonitoria/chat', function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Chat monitoria.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Chat monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/detalhesMonitoria/editar', function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Editar monitoria.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Editar monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/detalhesMonitoria/cancelar', function(req,res){
    const id = req.params.id;

    let nome = '';
    if(perfis[id] == undefined){
        dados = 'Cancelar monitoria.';
    }else{
        dados = perfis[id].nome;
    }

    res.send('<h1>Cancelar monitoria</h1>'
        + '<h3>' + dados +'</h3>');
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
server.get('/monitorias/pesquisar', function(req,res){
    
    res.send('<h1>Pesquisar Monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/chat', function(req, res) {
    res.send('<h1>Chat de dúvidas</h1>');
});


server.get('/monitorias/pesquisar/verMais', function(req,res){
    
    res.send('<h1>Pesquisar Monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitorias/pesquisar/verMais/inscrever', function(req,res){
    
    res.send('<h1>Pesquisar Monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.listen(3000);
