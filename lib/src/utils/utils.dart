import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/constants/colors/colors.dart';

class Utils{

  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: tOnBoardingPage2Color,
      gravity: ToastGravity.BOTTOM
      );
  }

  static snackBar(String title, String message){
    Get.snackbar(
      title, 
      message,
      backgroundColor: tOnBoardingPage2Color,
      snackPosition: SnackPosition.TOP,
      colorText: Colors.lightGreen);
  }
}