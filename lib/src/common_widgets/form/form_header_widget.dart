import 'package:flutter/material.dart';

import '../../constants/dimensions/app_dimensions.dart';

class FormHeaderWidget extends StatelessWidget {
  
  const FormHeaderWidget({
    super.key, 
    required this.image, 
    required this.title, 
    required this.subTitle, this.textAlign, 
    this.crossAxisAlignment = CrossAxisAlignment.start
    
  });

  final String image, title, subTitle;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SizedBox(height: Dimensions.height20*2,),
          Center(child: Image(image:  AssetImage(image),width: Dimensions.height20*15)),
          SizedBox(height: Dimensions.height20,),
          Text(title,style: Theme.of(context).textTheme.headlineSmall,textAlign: textAlign,),
          SizedBox(height: Dimensions.height5,),
          Text(subTitle,style: Theme.of(context).textTheme.bodyLarge,textAlign: textAlign,),
      ],
    );
  }
}