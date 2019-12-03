const express = require ('express');
const handlebars = require('express-handlebars')
const bodyParser = require('body-parser');
const path = require('path');

const passport = require('passport')  
const session = require('express-session')  
const MongoStore = require('connect-mongo')(session)

const conexao = require('./conexao');

const server = express();

// require('./auth')(passport);
// server.use(session({  
//   store: new MongoStore({
//     db: global.db,
//     ttl: 30 * 60 // = 30 minutos de sessão
//   }),
//   secret: '123',//configure um segredo seu aqui
//   resave: false,
//   saveUninitialized: false
// }))
// server.use(passport.initialize());
// server.use(passport.session());

server.use(express.static(path.join(__dirname,'/public')));
server.use(bodyParser());
server.engine('handlebars', handlebars());
server.set('view engine', 'handlebars');

server.get('/', function(req, res) {
    res.render('login');
});

server.post('/', function(req, res){

    // const sql = "select email, senha from usuario where email=?", [req.body.email];
    const dados = [req.body.email, req.body.senha]
    
    conexao.query("select email, senha from usuario where email=?,senha=?", [req.body.email], [req.body.senha], function(error, results, fields) {
        if(error) throw error;       
        
        res.redirect('/monitorias');
    });
});

server.get('/cadastro', function(req, res) {
    res.render('cadUsuario');
});

server.post('/cadastro', function(req, res){
    const sql = "INSERT INTO usuario (nome, senha, tipo, email, foto) VALUES(?,?,?,?,NULL);";
    const dados = [req.body.nome, req.body.senha, req.body.tipo, req.body.email];

    conexao.query(sql, dados, function(error, results, fields) {
        if(error) throw error;
        res.redirect('/');
    });
});

server.get('/cadastro/', function(req, res) {
    res.send('<h1>Login depois de cadastro</h1>');
});

server.get('/home', function(req, res) {
    res.send('<h1>Informações sobre o site</h1>');
});

server.get('/sair', function(req, res){
    res.send('<h1>Sair da conta</h1>');
});

server.get('/perfil', function(req, res) {
    res.send('<h1>Perfil do usuário logado</h1>'
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
    res.send('<h1>Enviar código para tornar-se Monitor</h1>');
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

server.get('/monitoriasInscritas', function(req, res) {
    res.send('<h1>Lista de todas as monitorias em que o usuário logado está inscrito</h1>');
});

server.get('/monitoriasInscritas/:id/cancelarInscricao', function(req, res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Cancelar inscrição da monitoria:</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitoriasInscritas/:id/avaliar', function(req, res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Avaliar monitoria de:</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitoriasInscritas/:id/avaliar/enviar', function(req, res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Enviar a avaliação da monitoria de:</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitoriasInscritas/:id/chat', function(req, res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;
    
    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Ir para o chat da monitoria de:</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/monitoriasInscritas/:id/chat/enviarMensagem', function(req, res){
    const monitorias = [];
    monitorias[0] = {assunto: 'Números complexos'}
    monitorias[1] = {assunto: 'Células'}

    const id = req.params.id;

    if(monitorias[id] == undefined){
        dados = 'Monitoria não encontrada.';
    }else{
        dados = monitorias[id].assunto;
    }

    res.send('<h1>Enviar mensagem para o chat da monitoria de:</h1>'
        + '<h3>' + dados +'</h3>');
});

server.get('/chats', function(req, res) {
    res.send('<h1>Chats de dúvidas</h1>');
    const sql = "SELECT id, datahohario, conteudo FROM mensagem"
    conexao.query(sql, function(error, results, fields) {
        if(error) throw error;
        res.render('chatMonitoria', { chat: results});
    });
});

server.get('/chats/:idMonitoria/chat', function(req, res){
    const chats = [];
    chats[0] = {conteudo: 'Olá'}
    chats[1] = {conteudo: 'Oi'}

    const idMonitoria = req.params.idMonitoria;

    let dados = '';

    if(chats[idMonitoria] == undefined){
        dados = 'Chat não encontrado.';
    }else{
        dados = chats[idMonitoria].conteudo;
    }

    res.send('<h1>Chat</h1>'
    + '<h3>' + dados + '</h3>');
});

server.get('/chats/:idMonitoria/chat/enviarMensagem', function(req, res){
    const chats = [];
    chats[0] = {conteudo: 'Olá'}
    chats[1] = {conteudo: 'Oi'}

    const idMonitoria = req.params.idMonitoria;

    let dados = '';

    if(chats[idMonitoria] == undefined){
        dados = 'Chat não encontrado.';
    }else{
        dados = chats[idMonitoria].conteudo;
    }

    res.send('<h1>Enviar mensagem no chat</h1>'
    + '<h3>' + dados + '</h3>');
});

server.get('/monitorias', function(req, res) {
    //res.send('<h1>Lista de todas as monitorias cadastradas</h1>');
    //res.render('ListaMonitCad');

    const sql = "SELECT conteudo, datahorario, numvagas, numinscritos, descricao FROM monitoria";
    
    conexao.query(sql, function(error, results, fields) {
        if(error) throw error;
        
        res.render('ListaMonitCad', { monitorias: results });
    });
});

server.get('/monitorias/:id/detalhesMonitoria', function(req,res){
    const id = req.params.id;

    conexao.query("select M.conteudo, M.descricao, M.numvagas, M.numinscritos, M.datahorario, U.nome, D.nome as " +
    "disciplina, L.bloco, L.identificacao, L.tipo from monitoria as M inner join Local L on (M.id_local = L.id) " + 
    "inner join disciplina D on (M.id_disciplina = D.id) inner join Usuario U  inner join Monitor Monit on " + 
    " (M.Id_Monitor = Monit.Id && Monit.Id_Usuario = U.Id) where M.id=?", [id], function(error, results, fields) {
        if(error) throw error;
        
        res.render('detalhes', { monitoria: results });
    });
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
