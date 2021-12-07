import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:dropdown_search/dropdown_search.dart';

class HistoryForm extends StatelessWidget {
  HistoryForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;
  bool _value = false;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            maxLength: 8,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "75904782",
              hintText: "Inserte su primer DNI",
              enabled: false,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Juan",
              hintText: "Inserte su primer nombre",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "Alfonso",
              hintText: "Inserte su segundo nombre",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "Perez",
              hintText: "Inserte su apellido paterno",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "Tirado",
              hintText: "Inserte su apellido materno",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          DropdownSearch(
            mode: Mode.MENU,
            items: ["ESSALUD", "FF.AA", "SIS"],
            label: "Tipo de Seguro",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "SIS",
            enabled: false,
          ),
          const SizedBox(height: defaultPadding),
          DropdownSearch(
            mode: Mode.MENU,
            items: [
              "1",
              "2",
              "3",
              "4",
              "5",
              "6",
              "7",
              "8",
              "9",
              "10",
              "11",
              "12",
              "13",
              "14",
              "15",
              "16",
              "17",
              "18",
              "19",
              "20",
              "21",
              "22",
              "23",
              "24",
              "25",
              "26",
              "27",
              "28",
              "29",
              "30",
              "31",
              "32",
              "33",
              "34",
              "35",
              "36",
              "37",
              "38",
              "39",
              "40",
              "41",
              "42",
              "43",
              "44",
              "45",
              "46",
              "47",
              "48",
              "49",
              "50",
              "51",
              "52",
              "53",
              "54",
              "55",
              "56",
              "57",
              "58",
              "59",
              "60",
              "61",
              "62",
              "63",
              "64",
              "65",
              "66",
              "67",
              "68",
              "69",
              "70",
              "71",
              "72",
              "73",
              "74",
              "75",
              "76",
              "77",
              "78",
              "79",
              "80",
              "81",
              "82",
              "83",
              "84",
              "85",
              "86",
              "87",
              "88",
              "89",
              "90",
              "91",
              "92",
              "93",
              "94",
              "95",
              "96",
              "97",
              "98",
              "99",
              "100",
            ],
            label: "Edad",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "20",
            enabled: false,
          ),
          const SizedBox(height: defaultPadding),
          DropdownSearch(
            mode: Mode.MENU,
            items: [
              "Femenino",
              "Masculino",
            ],
            label: "Sexo",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "Masculino",
            enabled: false,
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "Administrador",
              hintText: "Inserte su ocuapción",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "Chiclayo",
              hintText: "Inserte su lugar de nacimiento",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "Polonia 222",
              hintText: "Inserte su dirección",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          DropdownSearch(
            mode: Mode.MENU,
            items: ["Soltero", "Casado", "Conviviente"],
            label: "Grado de Instrucción:",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "Soltero",
            enabled: false,
          ),
          const SizedBox(height: defaultPadding),
          DropdownSearch(
            mode: Mode.MENU,
            items: ["Primaria", "Secundaria", "Superior", "Técnico", "Otro"],
            label: "Estado Civil",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "Superior",
            enabled: false,
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "Amoxicilina y penicilina",
              hintText: "Detalle sus alergias",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "58",
              hintText: "Inserte su peso (kg)",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          TextField(
            decoration: InputDecoration(
              labelText: "1.60",
              hintText: "Inserte su talla (m)",
              enabled: false,
            ),
          ),
          const SizedBox(height: defaultPadding),
          DropdownSearch(
            mode: Mode.MENU,
            items: ["Si", "No"],
            label: "Factor de Riesgo",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "No",
            enabled: false,
          ),
          const SizedBox(height: defaultPadding),
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
