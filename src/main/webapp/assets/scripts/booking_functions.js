
var objectsID = {
    "usrName": document.getElementById("text-1"),
    "usrLastName": document.getElementById("text-2"),
    "usrMail": document.getElementById("text-3"),
    "usrPhone": document.getElementById("text-4"),

    "formBase": document.getElementById('book-form__base'),

    "NameVal": document.getElementById('validation-1'),
    "LastNameVal": document.getElementById('validation-2'),
    "MailVal": document.getElementById('validation-3'),
    "PhoneVal": document.getElementById('validation-4')
}

function SendBooking () {objectsID["formBase"].submit();}

function name__Val () {
    let namesPattern =/^[a-zA-ZñÑ]+(([',. -][a-zA-ZñÑ ])?[a-zA-ZñÑ]*)*$/;
    /* Validacion de nombre */
    if (objectsID["usrName"].value == "") {
        objectsID["usrName"].focus({ focusVisible: true });
        objectsID["usrName"].setCustomValidity("Se requiere un nombre para la reserva");
        objectsID["NameVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        console.log("Nombre vacio");
    } 
    else if (objectsID["usrName"].value != "") {
        if (namesPattern.test(objectsID["usrName"].value) == false) {
            objectsID["usrName"].focus({ focusVisible: true });
            objectsID["usrName"].setCustomValidity("Ingresa un nombre valido");
            objectsID["NameVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        } else {
            objectsID["NameVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-correct");
            console.log("Nombre validado");
            return true;
        }
    }
}

function lastName__Val () {
    let namesPattern =/^[a-zA-ZñÑ]+(([',. -][a-zA-ZñÑ ])?[a-zA-ZñÑ]*)*$/;
    /* Validacion de apellido */
    if (objectsID["usrLastName"].value == "") {
        objectsID["usrLastName"].focus({ focusVisible: true });
        objectsID["usrLastName"].setCustomValidity("Se requiere un apellido para la reserva");
        objectsID["LastNameVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        console.log("Apellido vacio");
    }
    else if (objectsID["usrLastName"].value != "") {
        if (namesPattern.test(objectsID["usrLastName"].value) == false) {
            objectsID["usrLastName"].focus({ focusVisible: true });
            objectsID["usrLastName"].setCustomValidity("Ingresa un apellido valido");
            objectsID["LastNameVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        } else {
            objectsID["LastNameVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-correct");
            console.log("Apellido validado");
            return true;
        }
    }        
}

function mail__Val () {
    /* Validacion de correo */
    let mailPattern =/^[\w.-]+@[a-zA-Z_-]+?(?:\.[a-zA-Z]{2,6})+$/;
    if (objectsID["usrMail"].value == "") {
        objectsID["usrMail"].focus({ focusVisible: true });
        objectsID["usrMail"].setCustomValidity("Se requiere un correo de contacto");
        objectsID["MailVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        console.log("Correo vacio");
    } 
    else if (objectsID["usrMail"].value != "") {
        if (mailPattern.test(objectsID["usrMail"].value) == false) {
            objectsID["usrMail"].focus({ focusVisible: true });
            objectsID["usrMail"].setCustomValidity("Se requiere un correo valido");
            objectsID["MailVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        } else {
            objectsID["MailVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-correct");
            console.log("Correo validado");
            return true;  
        }
    }
}

function phone__Val () {
    let namesPattern =/^(11|\d{3})[-\s]?\d{4}[-\s]?\d{4}$/;
    /* Validacion de numero */
    if (objectsID["usrPhone"].value == "") {
        objectsID["usrPhone"].focus({ focusVisible: true });
        objectsID["usrPhone"].setCustomValidity("Se requiere un numero de telefono para la reserva");
        objectsID["PhoneVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        console.log("numero vacio");
    }
    else if (objectsID["usrPhone"].value != "") {
        if (namesPattern.test(objectsID["usrPhone"].value) == false) {
            objectsID["usrPhone"].focus({ focusVisible: true });
            objectsID["usrPhone"].setCustomValidity("Ingresa un numero de telefono valido");
            objectsID["PhoneVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-uncorrect");
        } else {
            objectsID["PhoneVal"].setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", "../assets/svg-resources.xml#icon-checked-correct");
            console.log("Numero validado");
            return true;
        }
    }        
}

function Booking_Validations () {
    if (name__Val() == true && lastName__Val() == true && mail__Val() == true && phone__Val() == true) {
        
        /* Todo ok? */
        console.log("Enviando solicitud...");
        SendBooking();
    } else {
        console.log("Algo a ido mal; uno de los campos es invalido")
    }
}