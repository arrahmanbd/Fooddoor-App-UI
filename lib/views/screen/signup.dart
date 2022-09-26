import 'package:flutter/material.dart';

import 'package:fooddoor/constant/default.dart';
import 'package:fooddoor/views/screen/login.dart';
import 'package:fooddoor/views/widget/button.dart';
import 'package:fooddoor/views/widget/custominput.dart';
import 'package:fooddoor/views/widget/heading.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      Heading(color: twhite, headline: 'Sign up to'),
                      Heading(color: orange, headline: 'Fooddoor')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .75,
                  decoration: const BoxDecoration(
                      color: twhite,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 40),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 19,
                        ),
                        CustomInput(inputText: 'Full name'),
                        const SizedBox(
                          height: 19,
                        ),
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
                              checkColor: twhite,
                              activeColor: teal,
                              autofocus: true,
                              focusColor: tGrey,
                              value: valuefirst,
                              onChanged: (value) async {
                                setState(() {
                                  valuefirst = value!;
                                });
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'By creating account,you agree to our ',
                                  style: TextStyle(fontSize: 14, color: tGrey),
                                ),
                                Text(
                                  'Term and Conditions',
                                  style: TextStyle(fontSize: 14, color: teal),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Button(
                          buttonText: 'Sign up',
                          bgColor: orange,
                          onPressed: ()=>Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogIn(),
                            )),
                          bwidth: double.infinity,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontSize: 14, color: twhite.withOpacity(.2)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogIn(),
                            ));
                      },
                      child: const Text(
                        'Sign in',
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
