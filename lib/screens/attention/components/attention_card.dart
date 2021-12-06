import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

class AttentionCard extends StatelessWidget {
  const AttentionCard(
    this.date,
    this.medico,
    this.press,
    this.diagnose,
    this.conclusion, {
    Key? key,
  }) : super(key: key);

  final Function() press;
  final String date;
  final String medico;
  final String conclusion;
  final String diagnose;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultPadding * 1.3,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                'Atencion nx',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          AttentionItem(
            info: date,
            description: 'Fecha de atención: ',
          ),
          AttentionItem(
            info: medico,
            description: 'Médico a cargo: ',
          ),
          AttentionItem(
            info: diagnose,
            description: 'Diagnóstico: ',
          ),
          AttentionItem(
            info: conclusion,
            description: 'Recomendaciones: ',
          ),
          AttentionItem(
            info: conclusion,
            description: 'Receta: ',
          ),
        ],
      ),
    );
  }
}

class AttentionItem extends StatelessWidget {
  const AttentionItem({
    Key? key,
    required this.info,
    required this.description,
  }) : super(key: key);

  final String info;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        defaultPadding,
        0,
        defaultPadding,
        defaultPadding,
      ),
      child: RichText(
        text: TextSpan(
          text: description,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          children: [
            TextSpan(
                text: "$info",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                )),
          ],
        ),
      ),
    );
  }
}
