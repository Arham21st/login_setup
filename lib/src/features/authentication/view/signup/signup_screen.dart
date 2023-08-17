import 'package:flutter/material.dart';
import 'package:login_setup/src/common_widgets/form/form_header_widget.dart';
import 'package:login_setup/src/constants/dimensions/app_dimensions.dart';
import 'package:login_setup/src/constants/image_strings/image_strings.dart';
import 'package:login_setup/src/constants/text_strings/text_strings.dart';
import 'package:login_setup/src/features/authentication/view/signup/widgets/signup_footer.dart';

import 'widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height20),
            child: const Column(
              children: [
                  FormHeaderWidget(
                    image: logo, 
                    title: tSignUpTitle, 
                    subTitle: tSignUpSubTitle),
        
                  SignupFormWidget(),

                  SignupFooterWidget()

              ],
            ),
            ),
        ),
      )
    );
  }
}

