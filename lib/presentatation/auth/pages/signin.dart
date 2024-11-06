import 'package:demo/common/helper/navigation/app_navigation.dart';
import 'package:demo/core/configs/theme/app_colors.dart';
import 'package:demo/presentatation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top:100,right:16,left:16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signinText(),
            const SizedBox(height: 30,),
            _emailField(),
            const SizedBox(height: 15,),
            _passwordField(),
            const SizedBox(height: 15,),
            _signinButton(),
            const SizedBox(height: 15,),
            _signupText(context),

          ],
        )),
    );
  }


  Widget _signinText(){
    return const Text(
      'SIGN IN',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Color.fromARGB(255, 0, 0, 0)
      )
    );
  }

  Widget _emailField(){
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email'
      )
    );
  }

  Widget _passwordField(){
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password'
      )
    );
  }

    Widget _signinButton() {
      return ReactiveButton(
        title:'Sign In',
        activeColor: Color.fromARGB(255, 255, 0, 0),
        onPressed: () async {}, 
        onSuccess: (){}, 
        onFailure: (error) {}
        );
    }

    Widget _signupText(BuildContext context){
      return Text.rich(
        TextSpan(
          children: [const TextSpan(
          text: "don't have account?",
          style: TextStyle(
              color: Colors.black
            ),
           ),
           TextSpan(
            text: "Sign up",
            style: const TextStyle(
              color: Colors.red
            ),
            recognizer: TapGestureRecognizer()..onTap =(){
              AppNavigator.push(context, const SignupPage());
            }           
            ),
           ]
        )
        );
  }
}
