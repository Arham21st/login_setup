import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../constants/text_strings/text_strings.dart';
import '../../../../core/models/user_profile/user_model.dart';
import '../../../controllers/signup/signup_controller.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignupController());
    // ignore: no_leading_underscores_for_local_identifiers
    final _formKey = GlobalKey<FormState>();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height15),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.userName,
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded)
      
              ),
            ),
            SizedBox(height: Dimensions.height15,),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined)
      
              ),
            ),
            SizedBox(height: Dimensions.height15,),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.numbers_outlined)
      
              ),
            ),
            SizedBox(height: Dimensions.height15,),
            TextFormField(
              controller: controller.password,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.remove_red_eye_outlined )
      
              ),
            ),
            SizedBox(height: Dimensions.height20,),

            SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: () {
              if(_formKey.currentState!.validate()){

                //SignupController.instance.signUp(controller.email.value.text.trim(), controller.password.value.text.trim());

                // SignupController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                // Get.offAll(()=> const OTPScreen());

                final user = UserModel(
                  fullName: controller.userName.text.trim(), 
                  email: controller.email.text.trim(), 
                  phoneNo: controller.phoneNo.text.trim(), 
                  password: controller.password.text.trim());
                  SignupController.instance.createUser(user);
                  
              }
              
            }, child: Text(tSignup.toUpperCase())),)
          ],
        ),
      ),
    );
  }
}