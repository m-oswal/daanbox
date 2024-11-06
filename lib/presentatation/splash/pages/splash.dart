import 'package:demo/common/helper/navigation/app_navigation.dart';
import 'package:demo/core/configs/configs/app_images.dart';
import 'package:demo/presentatation/auth/pages/signin.dart';
import 'package:demo/presentatation/home/pages/home.dart';
import 'package:demo/presentatation/splash/bloc/splash_cubit.dart';
import 'package:demo/presentatation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit,SplashState>(
        listener: (context, state) {
          if(state is UnAuthenticated){
            AppNavigator.pushReplacement(context, SigninPage());
          }
          if(state is Authenticated){
            AppNavigator.pushReplacement(context, HomePage());
          }
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.splashbg
                )
              )
          ),
        ),
      )
    );
  }
}