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

    const sessao = 0;
    
    const id = req.params.id;

    let dados = '';
    if(perfis[sessao] == undefined){
        dados = 'Perfil não encontrado.';
    }else{
        dados = perfis[sessao].nome + ', ' + perfis[sessao].status;        
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

server.get('/perfil/salvarAlteracao',function(req,res){
    res.send('<h1>Salvar Alteração</h1>');
});

server.get('/perfil/solicitarLicenca',function(req,res){
    res.send('<h1>Solicitar Licença</h1>');
});

server.get('/perfil/solicitarLicenca/solicitar',function(req,res){
    res.send('<h1>Solicitar licença</h1>');
});

server.get('/perfil/tornarseMonitor',function(req,res){
    res.send('<h1>Tornar-se Monitor</h1>');
});

server.get('/perfil/cadastrarMonitoria', function(req,res){
    res.send('<h1>Cadastrar Monitoria</h1>');
});

server.get('/perfil/cadastrarMonitoria/cadastrar', function(req,res){
    res.send('<h1>Cadastro de Monitoria</h1>');
});

server.get('/perfil/:id/cancelarMonitoria', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const idMonitoria = req.params.idMonitoria;

    if(monitorias[idMonitoria] == undefined){
        dados = 'Não foi possível concluir a solicitação.';
    }else{
        dados = monitorias[idMonitoria].assunto;
    }

    res.send('<h1>Cancelar Monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/minhaMonitoria', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const idMonitoria = req.params.idMonitoria;

    if(monitorias[idMonitoria] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[idMonitoria].assunto;
    }

    res.send('<h1>Minha monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/minhaMonitoria/chat', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const idMonitoria = req.params.idMonitoria;

    if(monitorias[idMonitoria] == undefined){
        dados = 'Monitoria ou chat não encontrado.';
    }else{
        dados = monitorias[idMonitoria].assunto + "<br>Chat";
    }

    res.send('<h1>Chat de monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/minhaMonitoria/editar', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Editar monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/perfil/:id/minhaMonitoria/cancelar', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Cancelar monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

//Precisa arrumar essa rota:
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

server.get('/chats', function(req, res) {
    res.send('<h1>Chats de dúvidas</h1>');
});

//Rever a questão do id
server.get('/chats/:id', function(req, res){
    const chats = [];
    chats[0] = {conteudo: 'Olá'}
    chats[1] = {conteudo: 'Oi'}

    const id = req.params.id;

    let dados = '';

    if(chats[id] == undefined){
        dados = 'Chat não encontrado.';
    }else{
        dados = chats[id].conteudo;
    }

    res.send('<h1>Chat</h1>'
    + '<h3>' + dados + '</h3>');
});

server.get('/chats/:id/enviarMensagem', function(req, res){
    const chats = [];
    chats[0] = {conteudo: 'Olá'}
    chats[1] = {conteudo: 'Oi'}

    const id = req.params.id;

    let dados = '';

    if(chats[id] == undefined){
        dados = 'Chat não encontrado.';
    }else{
        dados = chats[id].conteudo;
    }

    res.send('<h1>Enviar mensagem no chat</h1>'
    + '<h3>' + dados + '</h3>');
});

server.get('/monitorias', function(req, res) {
    res.send('<h1>Lista de todas as monitorias cadastradas</h1>');
});

server.get('/monitorias/:id/detalhesMonitoria', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Detalhes de monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitorias/:id/pesquisar', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Pesquisar Monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitorias/:id/pesquisar/detalhesMonitoria', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Detalhes de monitoria</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitorias/:id/pesquisar/detalhesMonitoria/inscrever', function(req,res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Inscrever-se na monitoria:</h1>'
        + '<h3>' + dados +'</h3>');
});

server.listen(3000);
