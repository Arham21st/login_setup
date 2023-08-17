import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/features/authentication/view/forget_password/forget_password_mail/forget_pass_mail_screen.dart';

import '../../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../../constants/text_strings/text_strings.dart';

class ForgetPassViaEmailWidget extends StatelessWidget {
  const ForgetPassViaEmailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.offAll(()=>const ForgetPassMailScreen());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.height10,vertical: Dimensions.height15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height10),
          color: Colors.grey.shade200
        ),
        child: Row(
          children: [
            Icon(Icons.email_outlined,size: Dimensions.height20*3,),
            SizedBox(width: Dimensions.height10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tEmail,style: Theme.of(context).textTheme.titleLarge,),
                Text(tResetViaEMail,style: Theme.of(context).textTheme.bodyLarge,)
              ],
            )
          ],
        ),
      ),
    );
  }
}