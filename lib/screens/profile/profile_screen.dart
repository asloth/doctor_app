import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

import 'package:doctor_app/screens/profile/components/profile_header.dart';
import 'components/profile_list_item.dart';
import 'package:doctor_app/screens/profile/hystory_screen.dart';
import 'package:doctor_app/screens/profile/editar_screen.dart';
import 'package:doctor_app/screens/welcome/welcome_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: spacingUnit * 5),
            ProfileHeader(),
            SizedBox(height: spacingUnit * 3),
            Expanded(
                child: ListView(
              children: <Widget>[
                ProfileListItem(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditarScreen()),
                    );
                  },
                  icon: Icons.person,
                  text: 'Editar mis datos',
                ),
                ProfileListItem(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HystoryScreen()),
                    );
                  },
                  icon: Icons.history,
                  text: 'Historial clínico',
                ),
                /*ProfileListItem(
                  () {},
                  icon: Icons.file_copy,
                  text: 'Subir copia de mi DNI',
                ),
                ProfileListItem(
                  () {},
                  icon: Icons.settings,
                  text: 'Configuración',
                ),*/
                ProfileListItem(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  icon: Icons.logout,
                  text: 'Cerrar sesión',
                  //hasNavigation: false,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
