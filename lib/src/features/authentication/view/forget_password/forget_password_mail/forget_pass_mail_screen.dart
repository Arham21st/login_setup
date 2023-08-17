import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/common_widgets/form/form_header_widget.dart';
import 'package:login_setup/src/constants/dimensions/app_dimensions.dart';
import 'package:login_setup/src/constants/image_strings/image_strings.dart';
import 'package:login_setup/src/constants/text_strings/text_strings.dart';
import 'package:login_setup/src/features/authentication/view/forget_password/forget_password_otp/forget_pass_otp.dart';

class ForgetPassMailScreen extends StatelessWidget {
  const ForgetPassMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(Dimensions.height20),
          child: Column(
            children: [
              const FormHeaderWidget(
                image: pc, 
                title: tForgetPassword, 
                subTitle: tForgetPasswordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                textAlign: TextAlign.center,),
              SizedBox(height: Dimensions.height20,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tEmail)
                      ),
                    ),
                    SizedBox(height: Dimensions.height20,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: () {
                        Get.offAll(()=>const OTPScreen());
                      }, child: Text(tNext.toUpperCase())),
                    )
                  ],
                )
              )
            ],
          ),),
        ),
      ),
    );
  }
}