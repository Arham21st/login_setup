import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_setup/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_setup/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_setup/src/constants/colors/colors.dart';
import 'package:login_setup/src/constants/dimensions/app_dimensions.dart';
import 'package:login_setup/src/constants/image_strings/image_strings.dart';
import 'package:login_setup/src/constants/text_strings/text_strings.dart';
import 'package:login_setup/src/features/authentication/view/login/login_screen.dart';
import 'package:login_setup/src/features/authentication/view/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Dimensions.isDark?tSecondaryColor:tPrimaryColor,
        body: Stack(
          children: [
            FadeInAnimationWidget(
              durationInMs: 1500,
              animate: AnimationPosition(
                bottomAfter: 0,
                bottombefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0,
              ),
              child: Padding(
                padding:  EdgeInsets.all(Dimensions.height30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Hero(
                      tag: "welcome-image-tag",
                      child: Image(image: const AssetImage(welcomimage),height: Dimensions.height20*25,)),
                    Column(
                      children: [
                        Text(tWelcomeTitle,style: Theme.of(context).textTheme.headlineSmall,),
                        Text(tWelcomeSubTitle,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: OutlinedButton(onPressed: () {
                            Get.offAll(()=>const LoginScreen());
                          },
                           child: Text(tLogin.toUpperCase())),
                        ),
                        SizedBox(width: Dimensions.height10,),
                        Expanded(
                          child: ElevatedButton(onPressed: () {
                            Get.offAll(()=>const SignupScreen());
                          }, 
                           child: Text(tSignup.toUpperCase())),
                        )
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      )
      );
  }
}