import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/features/authentication/view/login/login_screen.dart';
import '../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../constants/image_strings/image_strings.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: Divider(thickness: 1,)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height5),
              child: Text("OR",style: Theme.of(context).textTheme.titleLarge,),
            ),
            const Expanded(child: Divider(thickness: 1,))
          ],
        ),
        SizedBox(height: Dimensions.height10,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(onPressed: () {
            
          },
          icon: Image(image: const AssetImage(googleLogo),width: Dimensions.height20,),
          label: const Text(tSignInWithGoogle)),
        ),

        SizedBox(height: Dimensions.height10,),

        TextButton(onPressed: () {
          Get.offAll(()=>const LoginScreen());
        }, 
        child: Text.rich(
          TextSpan(text: tAlreadyHaveAnAccount,
          style: Theme.of(context).textTheme.bodyLarge,
          children: const [
            TextSpan(
              text: tLogin,
              style: TextStyle(color: Colors.blue)
            )
          ])
        ))
      ],
    );
  
  }
}