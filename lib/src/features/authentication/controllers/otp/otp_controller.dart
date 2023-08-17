import 'package:get/get.dart';
import 'package:login_setup/src/features/authentication/controllers/firebase/firebase_controller.dart';
import 'package:login_setup/src/features/core/view/user_profile/user_profile_screen.dart';

class OtpController extends GetxController{

  static OtpController get instance => Get.find();

  void verifyOtp(String otp)async{

    var isVarified = await FirebaseController.instance.verifyOTP(otp);

    isVarified? Get.offAll(()=> const UserProfileScreen()):Get.back();

  }

}