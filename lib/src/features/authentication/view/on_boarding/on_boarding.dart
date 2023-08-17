import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_setup/src/constants/colors/colors.dart';
import 'package:login_setup/src/constants/dimensions/app_dimensions.dart';
import 'package:login_setup/src/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
   const OnBoardingScreen({super.key});

 
  @override
  Widget build(BuildContext context) {

   final obController = OnBoardingController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            
              LiquidSwipe(
              liquidController: obController.controller,
              pages: obController.pages,
              slideIconWidget: const Icon(Icons.arrow_back_ios),
              enableSideReveal: true,
              onPageChangeCallback: obController.onPageChangeCallback,
              ),

              Positioned(
              top: Dimensions.height10,
              right: Dimensions.height20,
              child: TextButton(
                onPressed: () {
                  obController.skip();
                },
                child: Text("Skip",style: TextStyle(color: Colors.grey,fontSize: Dimensions.height20),)
                ),
                ),

              Positioned(
                bottom: Dimensions.height20*5,
                child: OutlinedButton(onPressed: () {
                  obController.animateToNextSlide();
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: EdgeInsets.all(Dimensions.height20),
                  foregroundColor: Colors.white
                ),
                 child: Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: const BoxDecoration(
                    color: tDarkColor,
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                 ),
                 ),
                 ),

              Obx(() => Positioned(
                bottom: Dimensions.height20*1.5,
                child: AnimatedSmoothIndicator(
                  effect:  WormEffect(
                    activeDotColor: const Color(0xff272727),
                    dotHeight: Dimensions.height15/2
                  ),
                  activeIndex: obController.currentPage.value, 
                  count: 3),
                  ),
                  ),
          ],
        ),
        ),
    );

    
  }
  
}

