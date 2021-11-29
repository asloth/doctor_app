import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor = Color(0xFF255ED6);
const textColor = Color(0xFF35364F);
const backgroundColor = Color(0xFFE6EFF9);
const redColor = Color(0xFFE85050);
const spacingUnit = 10;

const defaultPadding = 16.0;

// our default Shadow
const defaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: primaryColor.withOpacity(0.1),
  ),
);

// I will explain it later

const emailError = 'Introduzca una dirección de correo electrónico válida';
const requiredField = "Este campo es obligatorio";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'se requiere contraseña'),
    MinLengthValidator(8,
        errorText: 'la contraseña debe tener al menos 8 dígitos'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'las contraseñas deben tener al menos un carácter especial')
  ],
);
