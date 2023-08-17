

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/features/core/view/user_profile/user_profile_update_screen.dart';
import 'package:login_setup/src/features/core/view/user_profile/widgets/user_profile_menu_widget.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/dimensions/app_dimensions.dart';
import '../../../../constants/image_strings/image_strings.dart';
import '../../../../constants/text_strings/text_strings.dart';
import '../../../authentication/controllers/firebase/firebase_controller.dart';
import '../../../authentication/controllers/signup/signup_controller.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignupController());
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        title: Text(tProfile, style: Theme.of(context).textTheme.titleLarge),
        actions: [IconButton(onPressed: () {}, icon: Icon(isDark ? Icons.sunny : Icons.dark_mode_outlined))],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.all(Dimensions.height30),
          child: Column(
            children: [

              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: Dimensions.height20*6,
                    height: Dimensions.height20*6,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(Dimensions.height20*5), 
                        child: const Image(image: AssetImage(pc))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: Dimensions.height35,
                      height: Dimensions.height35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.height20*5), 
                      color: tPrimaryColor),
                      child:  Icon(
                        Icons.edit_outlined,
                        color: Colors.black,
                        size: Dimensions.height20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height10),
              Text(controller.userName.value.text, style: Theme.of(context).textTheme.titleLarge),
              Text(controller.email.value.text, style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: Dimensions.height20),

              /// -- BUTTON
              SizedBox(
                width: Dimensions.height20*10,
                height: Dimensions.height20*2,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateUserProfileScreen()),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    elevation: 0,
                    backgroundColor: tPrimaryColor, 
                    side: BorderSide.none,),
                  child: Text("Edit Profile", style: TextStyle(color: tDarkColor,fontSize: Dimensions.height20)),
                ),
              ),
              SizedBox(height: Dimensions.height30),
              const Divider(),
              SizedBox(height: Dimensions.height10),

              /// -- MENU
              UserProfileMenuWidget(title: "Settings", icon: Icons.settings_outlined, onPress: () {}),
              UserProfileMenuWidget(title: "Billing Details", icon: Icons.wallet_membership_outlined, onPress: () {}),
              UserProfileMenuWidget(title: "User Management", icon: Icons.person_add_alt_1_outlined, onPress: () {}),
              const Divider(),
              SizedBox(height: Dimensions.height10),
              UserProfileMenuWidget(title: "Information", icon: Icons.info_outlined, onPress: () {}),
              UserProfileMenuWidget(
                  title: "Logout",
                  icon: Icons.logout_outlined,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    Get.defaultDialog(
                      contentPadding: EdgeInsets.all(Dimensions.height10),
                      title: "LOGOUT",
                      titleStyle: Theme.of(context).textTheme.titleLarge,
                      content:  Padding(
                        padding: EdgeInsets.symmetric(vertical: Dimensions.height10,horizontal: Dimensions.height10),
                        child: const Text("Are you sure, you want to Logout?"),
                      ),
                      confirm: Expanded(
                        child: ElevatedButton(
                          onPressed: () => FirebaseController.instance.logoutUser(),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, side: BorderSide.none),
                          child: const Text("Yes"),
                        ),
                      ),
                      cancel: OutlinedButton(onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}