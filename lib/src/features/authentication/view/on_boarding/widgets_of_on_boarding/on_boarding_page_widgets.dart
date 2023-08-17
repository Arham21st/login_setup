import 'package:flutter/material.dart';

import '../../../../../constants/dimensions/app_dimensions.dart';
import '../../../models/on_boarding/on_boarding_model.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image),width: model.size,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: Dimensions.height20),
            child: Column(
              children: [
                Text(model.title,style: Theme.of(context).textTheme.headlineSmall),
                Text(model.subTitle,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,),
              ],
            ),
          ),
          Text(model.counterText,style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: Dimensions.height20*3,)
        ],
      ),
    );
  }
}