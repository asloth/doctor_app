import 'package:flutter/material.dart';

import '../../../constants.dart';

class LiveAttention extends StatelessWidget {
  const LiveAttention({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _btnStyle = ElevatedButton.styleFrom(
      primary: redColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(
          color: redColor,
        ),
      ),
      textStyle: const TextStyle(fontSize: 17),
    );

    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [defaultShadow],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              top: 15.0,
              bottom: 15.0,
            ),
            child: Text(
              'Ahora atendiendo: Dr. Cecilia Zapata',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Solicitar atención médica'),
              style: _btnStyle,
            ),
          )
        ],
      ),
    );
  }
}
