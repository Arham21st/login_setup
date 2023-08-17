import 'package:flutter/material.dart';
import 'package:login_setup/src/common_widgets/form/form_header_widget.dart';
import 'package:login_setup/src/constants/dimensions/app_dimensions.dart';
import 'package:login_setup/src/constants/image_strings/image_strings.dart';
import 'package:login_setup/src/constants/text_strings/text_strings.dart';
import 'widgets/login_footer_widget.dart';
import 'widgets/login_form_widgets.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height20),
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: logo,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,),

                LoginFormWidget(),

                LoginFooterWidget()
              ],
            )),
        )
      ),
    );
  }
}





