import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/auth/sign_in_screen.dart';
import 'package:doctor_app/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/splash_bg.svg",
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  Icon(
                    Icons.local_hospital,
                    color: Colors.white,
                    size: 35,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Posta Virtual',
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  // As you can see we need more paddind on our btn
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF6CD8D1),
                      ),
                      child: Text("Registrar"),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            )),
                        style: TextButton.styleFrom(
                          // backgroundColor: Color(0xFF6CD8D1),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFF6CD8D1)),
                          ),
                        ),
                        child: Text("Iniciar Sesión"),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
