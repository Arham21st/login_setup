import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_setup/src/constants/dimensions/app_dimensions.dart';
import 'package:login_setup/src/constants/text_strings/text_strings.dart';
import 'package:login_setup/src/features/authentication/controllers/otp/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OtpController());
    var otp;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(Dimensions.height30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tOtp,style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.height20*4
                ),
                ),
                SizedBox(height: Dimensions.height10,),
                Text("verification".toUpperCase(),style: Theme.of(context).textTheme.headlineSmall,),
                SizedBox(height: Dimensions.height20,),
                Text("Enter the verification code sent at support@ppg.com",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,),
                SizedBox(height: Dimensions.height10,),
                OtpTextField(
                  numberOfFields: 6,
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  onSubmit: (value){
                      otp = value;
                    controller.verifyOtp(otp);
                  },
                ),
                SizedBox(height: Dimensions.height30,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                        controller.verifyOtp(otp);
                  }, child: Text(tNext.toUpperCase())),
                )
              ],
            ),
          ),),

      )
    );
  }
}