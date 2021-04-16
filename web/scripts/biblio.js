/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//onclick botões de atende aos finais de semana
function setOpenTrue() {
    document.getElementById("open").classList.add('active');
    document.getElementById("dont-open").classList.remove('active');
    document.getElementById("open_on_weekends").value = "yes";
}

function setOpenFalse() {
    document.getElementById("open").classList.remove('active');
    document.getElementById("dont-open").classList.add('active');
    document.getElementById("open_on_weekends").value = "no";
}

//Imagem ativa na exibição do orfanato
function setSelectedImage(src){   
    x = document.getElementsByClassName('active');
    
    for (var i = 0; i < x.length; i++) {
        x[i].classList.remove('active');
    }
    
    document.getElementById(src).classList.add('active');
    document.getElementById("selectedImage").src = src; 
}

//Validação do formulário de login
function validateForm(){
    $("#login-form").validate({
        rules:{
            user:"required",
            password:"required",
        },

        messages: {
            user:"Digite seu nome de usuário",
            password:"Digite a sua senha",
        },

        submitHandler: function(form){
            form.submit();	
        }
    });
}

function validateOrphanageForm(){
    $.validator.setDefaults({
        ignore: [],

    });

    $("#orphanage-form").validate({
        rules: {
            latitude: "required",
            name: "required",
            phone_number: "required",
            about: "required",
            instructions: "required",
            opening_hours: "required",
            open_on_weekends: "required",

        },

        messages: {
            latitude: "Selecione o local no mapa",
            name: "Digite o nome do orfanato",
            phone_number: "Digite um número de telefone do orfanato",
            about: "Informe sobre o orfanato",
            instructions: "Digite as instruções de visita do orfanato",
            opening_hours: "Digite o horário de abertura do orfanato",
            open_on_weekends: "*obrigatório",
        },

        submitHandler: function (form) {
            form.submit();
        }
    });
}


function imagesPreview(){
    $(function () {

        var imagesPreview = function (input, placeToInsertImagePreview) {

            if (input.files) {
                var filesAmount = input.files.length;

                for (i = 0; i < filesAmount; i++) {
                    var reader = new FileReader();

                    reader.onload = function (event) {
                        $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
                    };

                    reader.readAsDataURL(input.files[i]);
                }
            }

        };

        $('#file-input').on('change', function () {
            imagesPreview(this, 'div.preview');
        });
    });
}

function placeMarker(location) {
    if (marker == null) {
        marker = new google.maps.Marker({
            position: location,
            map: map,
            icon: icon
        });

        document.getElementById("latitude").value = location.lat();
        document.getElementById("longitude").value = location.lng();

        removeListener();

        marker.addListener('click', function () {
            this.setMap(null);
            marker = null;

        })
    } else {
        marker.setMap(null);
        marker = null;
        placeMarker(location);
    }

}

function removeListener() {
    google.maps.event.addListener(marker, 'mouseover', function () {
        marker.setIcon(icon2);
    });

    google.maps.event.addListener(marker, 'mouseout', function () {
        marker.setIcon(icon);
    });
}