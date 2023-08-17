

import 'package:get/get.dart';

import '../../../../repository/user_repository/user_repository.dart';
import '../../../../utils/utils.dart';
import '../../../authentication/controllers/firebase/firebase_controller.dart';

class UserProfileController extends GetxController{

  static UserProfileController get instance => Get.find();

  final _firebaseController = Get.put(FirebaseController());

  final _userRepo = Get.put(UserRepository());

  getUserData(){

    final email = _firebaseController.firebaseUser.value?.email;
    if(email!=null){
      return _userRepo.getUserDetails(email);
    }else{
      Utils.snackBar("Error", "Something went wrong");
    }

  }


}