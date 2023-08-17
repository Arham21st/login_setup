import 'package:flutter/material.dart';
import 'package:login_setup/src/features/authentication/view/forget_password/foget_pass_option/forget_pass_bottom_sheet/forget_pass_bottom_sheet.dart';
import '../../../../../constants/dimensions/app_dimensions.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: 
    Padding(padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
    child: Column(
      children: [


        TextFormField(
          decoration: const InputDecoration(
            hintText: tEmail,
            labelText: tEmail,
            prefixIcon: Icon(Icons.email_outlined),
            border: OutlineInputBorder()
          ),
        ),


        SizedBox(height: Dimensions.height15,),


        TextFormField(
          decoration: InputDecoration(
            hintText: tPassword,
            labelText: tPassword,
            prefixIcon: const Icon(Icons.lock_outline),
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(onPressed: () {
              
            }, icon: const Icon(Icons.remove_red_eye_outlined))
          ),
        ),


        SizedBox(height: Dimensions.height10,),


        Align(
          alignment: Alignment.centerRight,
          child: TextButton(onPressed: () {
             ForgetPassScreen.resetPassBottomSheet(context);
          }, child: const Text(tForgetPassword)),
        ),


        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {
            
          }, child: Text(tLogin.toUpperCase()))
        )
      ],
    ),
    ),
    );
  }
}




