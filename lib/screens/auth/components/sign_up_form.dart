import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../constants.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  late String _userName,
      _email,
      _password,
      _phoneNumber,
      _emergencyPhoneNumber,
      _address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldName(text: "Documento de Identidad:"),
          TextField(
            maxLength: 8,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: ""),
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Nombres completos:"),
          TextFormField(
            decoration: InputDecoration(hintText: ""),
            validator:
                RequiredValidator(errorText: "Requiere llenar este campo"),
            // Let's save our username
            onSaved: (username) => _userName = username!,
          ),
          TextFieldName(text: "Apellidos completos:"),
          TextFormField(
            decoration: InputDecoration(hintText: ""),
            validator:
                RequiredValidator(errorText: "Requiere llenar este campo"),
            // Let's save our username
            onSaved: (username) => _userName = username!,
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Teléfono:"),
          // Same for phone number
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(hintText: ""),
            validator: RequiredValidator(
                errorText: "¡Utilice un correo teléfono válido!"),
            onSaved: (phoneNumber) => _phoneNumber = phoneNumber!,
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Teléfono de emergencia:"),
          // Same for phone number
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(hintText: ""),
            validator: RequiredValidator(
                errorText: "¡Utilice un correo teléfono válido!"),
            onSaved: (phoneNumber) => _phoneNumber = phoneNumber!,
          ),
          const SizedBox(height: defaultPadding),
          // We will fixed the error soon
          // As you can see, it's a email field
          // But no @ on keybord
          TextFieldName(text: "Correo:"),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: ""),
            validator: EmailValidator(
                errorText: "¡Utilice un correo electrónico válido!"),
            onSaved: (email) => _email = email!,
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Contraseña"),
          TextFormField(
            // We want to hide our password
            obscureText: true,
            decoration: InputDecoration(hintText: "******"),
            validator: passwordValidator,
            onSaved: (password) => _password = password!,
            // We also need to validate our password
            // Now if we type anything it adds that to our password
            onChanged: (pass) => _password = pass,
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Confirma Contraseña"),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(hintText: "*****"),
            validator: (pass) =>
                MatchValidator(errorText: "La contraseña no coincide")
                    .validateMatch(pass!, _password),
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Dirección de vivienda actual"),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(hintText: ""),
            validator: RequiredValidator(errorText: "Requiere una dirección"),
            // Let's save our username
            onSaved: (address) => _address = address!,
          ),
        ],
      ),
    );
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 6),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
      ),
    );
  }
}
