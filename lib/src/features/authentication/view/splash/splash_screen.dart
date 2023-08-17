import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_setup/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_setup/src/constants/image_strings/image_strings.dart';
import 'package:login_setup/src/constants/text_strings/text_strings.dart';
import 'package:login_setup/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import '../../../../constants/dimensions/app_dimensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return SafeArea(child: 
    Scaffold(
      body: Stack(
        children: [
          FadeInAnimationWidget(
            durationInMs: 2400, 
            animate: AnimationPosition(
              topAfter: Dimensions.height10,
              topBefore: -30,
              leftAfter: Dimensions.height10,
              leftBefore: -30
              ),
            child: Image(image: const AssetImage(splashimg1),height: Dimensions.height20*5,)
            ),
          
          FadeInAnimationWidget(
            durationInMs: 2400,
            animate: AnimationPosition(
            topAfter: Dimensions.height20*8,
            topBefore: -30,
            leftAfter: Dimensions.height20*5,
            leftBefore: -30,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tAppName,style: Theme.of(context).textTheme.displaySmall,textAlign: TextAlign.start,),
                  Text(tAppTagLine,style: Theme.of(context).textTheme.bodyLarge,),
                ],
              ),
            ),

            FadeInAnimationWidget(
            durationInMs: 2400, 
            animate: AnimationPosition(
              bottomAfter: Dimensions.height20*10,
              bottombefore: -10,
              rightBefore: -10,
              rightAfter: Dimensions.height20*5
              ),
            child: Image(image: const AssetImage(splashimg1),height: Dimensions.height20*5,)
            ),
          
          
          
        ],
      ),
    )
    );
  }
}

