function foco(elementID){
    document.getElementById(elementID).focus();    
}

function cadAluno(){
    window.location.href = "cadAluno.html";
}

function cadProf(){
    window.location.href = "cadProf.html";
}

function exibirProf(){    
    document.getElementById("dadosProf").style.display = "inline";
    document.getElementById("dadosAluno").style.display = "none";
}

function exibirAluno(){
    document.getElementById("dadosAluno").style.display = "inline";
    document.getElementById("dadosProf").style.display = "none";
}