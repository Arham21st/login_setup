import 'package:flutter/material.dart';

import '../../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../../constants/text_strings/text_strings.dart';

class ForgetPassViaPhoneNoWidget extends StatelessWidget {
  const ForgetPassViaPhoneNoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.height10,vertical: Dimensions.height15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.height10),
        color: Colors.grey.shade200
      ),
      child: Row(
        children: [
          Icon(Icons.mobile_friendly_outlined,size: Dimensions.height20*3,),
          SizedBox(width: Dimensions.height10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tPhoneNo,style: Theme.of(context).textTheme.titleLarge,),
              Text(tResetViaPhone,style: Theme.of(context).textTheme.bodyLarge,)
            ],
          )
        ],
      ),
    );
  }
}