import 'package:flutter/material.dart';
import 'package:doctor_app/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'components/hystory_form.dart';
import 'package:doctor_app/screens/profile/editar_screen.dart';

class HystoryScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
            // Now it takes 100% of our height
          ),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: defaultPadding),
                    Text(
                      'Historia Clínica',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: defaultPadding),
                    HistoryForm(formKey: _formKey),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditarScreen(),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF6CD8D1),
                        ),
                        child: Text("Editar Datos"),
                      ),
                    ),
                    const SizedBox(height: defaultPadding * 2),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
