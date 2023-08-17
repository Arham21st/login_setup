import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../../constants/text_strings/text_strings.dart';
import '../forget_pass_mail/forget_pass_via_email_widget.dart';
import '../forget_pass_phone/forget_pass_via_phone_widget.dart';

class ForgetPassScreen{
  static Future <dynamic> resetPassBottomSheet(BuildContext context){
  return Get.bottomSheet(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.height20),
                  topRight: Radius.circular(Dimensions.height20))),
              Padding(
                padding: EdgeInsets.all(Dimensions.height30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tForgetPasswordTitle,style: Theme.of(context).textTheme.headlineSmall,),
                    SizedBox(height: Dimensions.height5,),
                    Text(tForgetPasswordSubTitle,style: Theme.of(context).textTheme.bodyLarge,),
                    SizedBox(height: Dimensions.height20,),
                    const ForgetPassViaEmailWidget(),
                    SizedBox(height: Dimensions.height20,),
                    const ForgetPassViaPhoneNoWidget()
                          ],
                          ),
              ),
            );
}
}