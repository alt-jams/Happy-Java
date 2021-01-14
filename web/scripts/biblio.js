/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function setOpenTrue() {
    document.getElementById("open").classList.add('active');
    document.getElementById("dont-open").classList.remove('active');
}

function setOpenFalse() {
    document.getElementById("open").classList.remove('active');
    document.getElementById("dont-open").classList.add('active');
}

function setSelectedImage(src){   
    x = document.getElementsByClassName('active');
    
    for (var i = 0; i < x.length; i++) {
        x[i].classList.remove('active');
    }
    
    document.getElementById(src).classList.add('active');
    document.getElementById("selectedImage").src = src; 
}

