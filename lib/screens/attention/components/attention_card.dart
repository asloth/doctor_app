import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

class AttentionCard extends StatelessWidget {
  const AttentionCard(
    this.date,
    this.medico,
    this.press,
    this.conclusion, {
    Key? key,
  }) : super(key: key);

  final Function() press;
  final String date;
  final String medico;
  final String conclusion;

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
          Padding(
            padding: const EdgeInsets.fromLTRB(
              defaultPadding,
              0,
              defaultPadding,
              defaultPadding,
            ),
            child: RichText(
              text: TextSpan(
                text: 'Fecha de atención: ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                children: [
                  TextSpan(
                      text: "$date",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              defaultPadding,
              0,
              defaultPadding,
              defaultPadding,
            ),
            child: RichText(
              text: TextSpan(
                text: 'Médico a cargo: ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                children: [
                  TextSpan(
                      text: "$medico",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              defaultPadding,
              0,
              defaultPadding,
              defaultPadding,
            ),
            child: RichText(
              text: TextSpan(
                text: 'Conclusiones: ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                children: [
                  TextSpan(
                      text: "$conclusion",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
