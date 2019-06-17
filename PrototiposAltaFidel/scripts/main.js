function foco(elementID){
    document.getElementById(elementID).focus();    
}

function cadAluno(){
    window.location.href = "cadAluno.html";
}

function cadProf(){
    window.location.href = "cadProf.html";
}

// $('input[name="aluProf"]').change(function(){
//     if($('input[name="aluProf"]:checked').val() === "prof"){
//         $('.mostrarEscon').show();
//     }else{
//         $('.mostrarEscon').hide();
//     }
// });

// $('input[name="FlgPontua"]').change(function () {
//     if ($('input[name="FlgPontua"]:checked').val() === "Sim") {
//         $('.camposExtras').show();
//     } else {
//         $('.camposExtras').hide();
//     }
// });

// function exibeProf(id){
//     if(document.getElementById(id).style.display == "none"){
//         document.getElementById(id).style.display = "inline";
//     }else{
//         document.getElementById(id).style.display = "none";
//     }
// }

// function exibeAluno(id){
//     if(document.getElementById(id).style.display == "none"){
//         document.getElementById(id).style.display = "inline";
//     }
// }

function exibirProf(){    
    document.getElementById("dadosProf").style.display = "inline";
    document.getElementById("dadosAluno").style.display = "none";
}

function exibirAluno(){
    document.getElementById("dadosAluno").style.display = "inline";
    document.getElementById("dadosProf").style.display = "inline";
}