import 'package:doctor_app/constants.dart';
import 'package:doctor_app/models/HealthPost.dart';
import 'package:flutter/material.dart';

class HealthPostCard extends StatelessWidget {
  const HealthPostCard({
    Key? key,
    required this.healthPost,
    required this.press,
  }) : super(key: key);

  final HealthPost healthPost;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 136,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                // our image take 200 width, thats why we set out total width - 200
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: defaultPadding,
                      ),
                      child: Text(
                        "${healthPost.name}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // it use the available space
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        defaultPadding,
                        0,
                        defaultPadding,
                        defaultPadding,
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: 'Horario de atención: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            children: [
                              TextSpan(
                                text: "${healthPost.openHour}h",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " - ",
                              ),
                              TextSpan(
                                text: "${healthPost.closeHour}h",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5, // 30 padding
                  vertical: defaultPadding / 4, // 5 top and bottom
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                ),
                child: Text(
                  "Distancia:  ${healthPost.distance} ${healthPost.unitDistancie}",
                  style: TextStyle(
                    color: backgroundColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 0,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding / 2,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
