import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/features/authentication/view/signup/signup_screen.dart';
import '../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../constants/image_strings/image_strings.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Dimensions.height10,),
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
        SizedBox(height: Dimensions.height30,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(onPressed: () {
            
          },
          icon: Image(image: const AssetImage(googleLogo),width: Dimensions.height20,),
          label: const Text(tSignInWithGoogle)),
        ),

        SizedBox(height: Dimensions.height15,),

        TextButton(onPressed: () {
          Get.offAll(()=>const SignupScreen());
        }, 
        child: Text.rich(
          TextSpan(text: tDontHaveAnAccount,
          style: Theme.of(context).textTheme.bodyLarge,
          children: const [
            TextSpan(
              text: tSignup,
              style: TextStyle(color: Colors.blue)
            )
          ])
        ))
      ],
    );
  
  }
}