import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/features/authentication/controllers/firebase/firebase_controller.dart';
import 'package:login_setup/src/features/core/models/user_profile/user_model.dart';
import 'package:login_setup/src/features/core/view/user_profile/user_profile_screen.dart';
import 'package:login_setup/src/repository/user_repository/user_repository.dart';

class SignupController extends GetxController{

  static SignupController get instance => Get.find();

  final userRepo = Get.put(UserRepository());

  final email = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();
  final phoneNo = TextEditingController();


  void signUp(String email,String password){

      FirebaseController.instance.createUserWithEmailAndPassword(email, password);

  }

  Future<void> createUser(UserModel user)async{
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.offAll(()=>const UserProfileScreen());
  }

  void phoneAuthentication(String phoneNo){

      FirebaseController.instance.phoneAuthentication(phoneNo);

  }

  

}