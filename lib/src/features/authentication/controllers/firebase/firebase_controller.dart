import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/exceptions/signup_with_email_and_pass_failure.dart';
import 'package:login_setup/src/features/core/view/user_profile/user_profile_screen.dart';
import 'package:login_setup/src/features/authentication/view/welcome/welcome_screen.dart';
import 'package:login_setup/src/utils/utils.dart';

class FirebaseController extends GetxController{

  static FirebaseController get instance => Get.find();


  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = "".obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

  }



  _setInitialScreen(User? user) {
    if(user==null){
      Get.offAll(()=>const WelcomeScreen());
    }else{
      Get.offAll(()=>const UserProfileScreen());
    }
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,

      verificationCompleted: (credential)async{
        await _auth.signInWithCredential(credential);
      }, 
       
      codeSent: ((verificationId, forceResendingToken) {
        this.verificationId.value=verificationId;
      }), 

      codeAutoRetrievalTimeout: ((verificationId,) {
        this.verificationId.value=verificationId;
      }),

      verificationFailed: (e){
        if(e.code=="invalid-phone-number"){
          Utils.snackBar("Error", "The provided phone number is not valid.");
        }else{
          Utils.snackBar("Error", "Something went wrong. Try again");
        }
      },
    );
  }

  Future<bool> verifyOTP(String otp)async{
    var credentials = await _auth
    .signInWithCredential(
      PhoneAuthProvider.credential(
        verificationId: verificationId.value, smsCode: otp));
    return credentials.user!= null? true :false;    
  }

  Future<void> createUserWithEmailAndPassword(String email,String password)async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(firebaseUser.value!=null){
        Get.offAll(()=>const UserProfileScreen());
      }else{
        Get.offAll(()=>const WelcomeScreen());
      }
    } on FirebaseAuthException catch(e){
        final ex = SignupWithEmailAndPasswordFailure.code(e.code);
        throw ex;
    } catch (_){
      const ex = SignupWithEmailAndPasswordFailure();
      throw ex;
    }
  }

  // Future<void> loginUserWithEmailAndPassword(String email,String password)async{
  //   try{
  //     await _auth.signInWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch(e){

  //   } catch (_){

  //   }


  // }

  Future <void> logoutUser()async{
    _auth.signOut();
  }


}