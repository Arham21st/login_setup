import 'package:flutter/material.dart';

import '../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height15),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded)
      
              ),
            ),
            SizedBox(height: Dimensions.height15,),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined)
      
              ),
            ),
            SizedBox(height: Dimensions.height15,),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.numbers_outlined)
      
              ),
            ),
            SizedBox(height: Dimensions.height15,),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.remove_red_eye_outlined )
      
              ),
            ),
            SizedBox(height: Dimensions.height20,),

            SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: () {
              
            }, child: Text(tSignup.toUpperCase())),)
          ],
        ),
      ),
    );
  }
}