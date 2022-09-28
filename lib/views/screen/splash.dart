import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddoor/constant/default.dart';
import 'package:fooddoor/views/screen/login.dart';
import 'package:fooddoor/views/widget/button.dart';
import 'package:fooddoor/views/widget/heading.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final Widget svgIcon = SvgPicture.asset(
    'assets/images/Illus.svg',
    height: 378,
    width: 319,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: teal,
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0, left: 32),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading(color: orange, headline: 'WELCOME'),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Fooddoor satisfies your food cravings\nwith your favourite food delivered to \nyou, wherever you are',
                            style: TextStyle(
                                color: twhite.withOpacity(.98), fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          Button(
                              buttonText: 'Get Started',
                              bgColor: orange,
                              onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LogIn(),
                              )),
                              
                              bwidth: 180),
                        ],
                      ),
                    ),
                  ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: svgIcon,
                )
                ],
              ),
            )));
  }
}
