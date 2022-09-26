
import 'package:flutter/material.dart';

import 'package:fooddoor/constant/default.dart';
import 'package:fooddoor/views/screen/signup.dart';
import 'package:fooddoor/views/widget/button.dart';
import 'package:fooddoor/views/widget/custominput.dart';
import 'package:fooddoor/views/widget/heading.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool valuefirst = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: teal,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 46,
                      ),
                      Heading(color: twhite, headline: 'Sign in to'),
                      Heading(color: orange, headline: 'Fooddoor')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .60,
                  decoration: const BoxDecoration(
                      color: twhite,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CustomInput(inputText: 'Email or Phone number'),
                          const SizedBox(
                            height: 19,
                          ),
                          CustomInput(inputText: 'Password'),
                          const SizedBox(
                            height: 19,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: tGrey.withOpacity(.01),
                                activeColor: tGrey.withOpacity(.1),
                                value: valuefirst,
                                onChanged: (value) async {
                                  setState(() {
                                    valuefirst = value!;
                                  });
                                },
                              ),
                              const Text(
                                'Remember Password ',
                                style: TextStyle(fontSize: 14, color: tGrey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Button(buttonText: 'Sign in', bgColor: orange, onPressed: (){},bwidth: double.infinity,)
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                  height: 40.0,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?',style: TextStyle(
                    fontSize: 14,
                    color: twhite.withOpacity(.2)
                  ),),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 14, color: orange),
                        ),
                      ),
                ],
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
