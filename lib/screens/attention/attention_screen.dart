import 'package:doctor_app/screens/attention/components/attention_card.dart';
import 'package:flutter/material.dart';

class AttentionScreen extends StatelessWidget {
  const AttentionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Atenciones recibidas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) => AttentionCard(
                        '02-04-21',
                        'Dr. Asma Khan',
                        () {},
                        'Se recomendó paracetamol cada 8h por 5 días'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
