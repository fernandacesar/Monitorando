function foco(elementID){
    document.getElementById(elementID).focus();    
}

function exibirProf(){    
    document.getElementById("dadosProf").style.display = "inline";
    document.getElementById("dadosAluno").style.display = "none";
}

function exibirAluno(){
    document.getElementById("dadosAluno").style.display = "inline";
    document.getElementById("dadosProf").style.display = "none";
}