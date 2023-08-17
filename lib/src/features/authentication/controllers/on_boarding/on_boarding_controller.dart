import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/dimensions/app_dimensions.dart';
import '../../../../constants/image_strings/image_strings.dart';
import '../../../../constants/text_strings/text_strings.dart';
import '../../models/on_boarding/on_boarding_model.dart';
import '../../view/on_boarding/widgets_of_on_boarding/on_boarding_page_widgets.dart';

class OnBoardingController extends GetxController{

    final controller = LiquidController();
    RxInt currentPage=0.obs;

     final pages = [
        OnBoardingPage(
          model: OnBoardingModel(
            bgColor: tOnBoardingPage1Color, 
            counterText: tOnBoardingCounter1,
            image: pc1,
            size: Dimensions.height20*15,
            title: tOnBoardingTitle1,
            subTitle: tOnBoardingSubTitle1)
            ),

        OnBoardingPage(
          model: OnBoardingModel(
            bgColor: tOnBoardingPage2Color, 
            counterText: tOnBoardingCounter2,
            image: pc2,
            size: Dimensions.height20*15,
            title: tOnBoardingTitle2,
            subTitle: tOnBoardingSubTitle2)
            ),

        OnBoardingPage(
          model: OnBoardingModel(
            bgColor: tOnBoardingPage3Color, 
            counterText: tOnBoardingCounter3,
            image: pc3,
            size: Dimensions.height20*15,
            title: tOnBoardingTitle3,
            subTitle: tOnBoardingSubTitle3)
            ),
    ];

    onPageChangeCallback(int activePageIndex)=> currentPage.value =activePageIndex;

    skip() => controller.jumpToPage(page: 2);

    animateToNextSlide(){
      int nextPage = controller.currentPage + 1;
      controller.animateToPage(page: nextPage);
    }


}