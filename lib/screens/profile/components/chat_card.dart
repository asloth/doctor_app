import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

class AttentionCard extends StatelessWidget {
  const AttentionCard(
    this.date,
    this.press, {
    Key? key,
  }) : super(key: key);

  final Function() press;
  final String date;

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
            color: Color(0xFF6CD8D1),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                'Dr. Cecilia Zapata',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          AttentionItem(
            info: date,
            description: 'Seguimiento:',
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
