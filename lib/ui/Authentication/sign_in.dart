import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_academy/style/app_colors.dart';
import 'package:quiz_academy/style/constant.dart';
import 'package:quiz_academy/ui/Authentication/sign_up.dart';
import 'package:quiz_academy/widgets/button_global.dart';

import '../home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width/2,
                    child: Lottie.asset('images/signin.json')
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Sign in',
                  style: TextStyle(
                      color: AppColor.titleColor,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration: myInputDecoration.copyWith(
                        labelText: 'Email Address',
                        hintText: 'Please Enter Your Email Address')),
                const SizedBox(
                  height: 10.0,
                ),
                AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: myInputDecoration.copyWith(
                        labelText: 'Password',
                        hintText: 'Please Enter Your Password')),
                const SizedBox(
                  height: 20.0,
                ),
                ButtonGlobal(
                    buttonText: 'Sign In',
                    buttonDecoration: myButtonDecoration,
                    buttonTextColor: Colors.white,
                    onPressed: () => Home().launch(context, isNewTask: true)),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: ('Not a user? '),
                        style: TextStyle(color: Colors.black45)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () => const SignUp().launch(context),
                        text: ('Sign Up'),
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
