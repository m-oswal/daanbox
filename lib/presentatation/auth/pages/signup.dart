import 'package:demo/common/helper/navigation/app_navigation.dart';
import 'package:demo/core/configs/theme/app_colors.dart';
import 'package:demo/presentatation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top:100,right:16,left:16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signupText(),
            const SizedBox(height: 30,),
            _emailField(),
            const SizedBox(height: 15,),
            _passwordField(),
            const SizedBox(height: 15,),
            _signupButton(),
            const SizedBox(height: 15,),
            _signinText(context),

          ],
        )),
    );
  }


  Widget _signupText(){
    return const Text(
      'SIGN UP',
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

    Widget _signupButton() {
      return ReactiveButton(
        title:'Sign up',
        activeColor: Color.fromARGB(255, 255, 0, 0),
        onPressed: () async {}, 
        onSuccess: (){}, 
        onFailure: (error) {}
        );
    }

    Widget _signinText(BuildContext context){
      return Text.rich(
        TextSpan(
          children: [const TextSpan(
          text: "Have an account?",
          style: TextStyle(
              color: Colors.black
            ),
           ),
           TextSpan(
            text: "Sign in",
            style: const TextStyle(
              color: Colors.red
            ),
            recognizer: TapGestureRecognizer()..onTap =(){
              AppNavigator.push(context, const SigninPage());
            }           
            ),
           ]
        )
        );
  }
}
