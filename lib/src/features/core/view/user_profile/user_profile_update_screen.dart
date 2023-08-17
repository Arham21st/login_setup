

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_setup/src/features/core/models/user_profile/user_model.dart';
import 'package:login_setup/src/features/core/view/user_profile/user_profile_screen.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/dimensions/app_dimensions.dart';
import '../../../../constants/image_strings/image_strings.dart';
import '../../../../constants/text_strings/text_strings.dart';
import '../../controllers/user_profile/user_profile_controller.dart';


class UpdateUserProfileScreen extends StatelessWidget {
  const UpdateUserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserProfileController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        title: Text("Edit Profile", style: Theme.of(context).textTheme.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(Dimensions.height30),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if(snapshot.connectionState== ConnectionState.done){
                
                if(snapshot.hasData){

                  UserModel userData = snapshot.data as UserModel;
                  return Column(
              children: [
                // -- IMAGE with ICON
                Stack(
                  children: [
                    SizedBox(
                      width: Dimensions.height20*6,
                      height: Dimensions.height20*6,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimensions.height20*5),
                          child: const Image(image: AssetImage(pc1))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: Dimensions.height35,
                        height: Dimensions.height35,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.height20*5), color: tPrimaryColor),
                        child: Icon(Icons.camera_alt_outlined, color: Colors.black, size: Dimensions.height20),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.height20*2.5),
          
                // -- Form Fields
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: userData.fullName,
                        decoration: const InputDecoration(
                            label: Text(tFullName), prefixIcon: Icon(Icons.person_outline)),
                      ),
                      SizedBox(height: Dimensions.height10),
                      TextFormField(
                        initialValue: userData.email,
                        decoration: const InputDecoration(
                            label: Text(tEmail), prefixIcon: Icon(Icons.email_outlined)),
                      ),
                      SizedBox(height: Dimensions.height10),
                      TextFormField(
                        initialValue: userData.phoneNo,
                        decoration: const InputDecoration(
                            label: Text(tPhoneNo), prefixIcon: Icon(Icons.phone_outlined)),
                      ),
                      SizedBox(height: Dimensions.height10),
                      TextFormField(
                        initialValue: userData.password,
                        obscureText: true,
                        decoration: InputDecoration(
                          label: const Text(tPassword),
                          prefixIcon: const Icon(Icons.fingerprint),
                          suffixIcon:
                          IconButton(icon: const Icon(Icons.remove_red_eye_outlined), onPressed: () {}),
                        ),
                      ),
                      SizedBox(height: Dimensions.height20),
          
                      // -- Form Submit Button
                      SizedBox(
                        width: double.infinity,
                        height: Dimensions.height20*2.7,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const UserProfileScreen()),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              elevation: 0),
                          child: Text("Edit Profile", style: TextStyle(color: tDarkColor,fontSize: Dimensions.height20*1.1)),
                        ),
                      ),
                      SizedBox(height: Dimensions.height20),
          
                      // -- Created Date and Delete Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text.rich(
                            TextSpan(
                              text: "Joined 14 August 2023",
                              style: Theme.of(context).textTheme.bodyLarge,
                              
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.height20*5,
                            height: Dimensions.height20*2,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(0),
                                  backgroundColor: Colors.redAccent.withOpacity(0.1),
                                  elevation: 0,
                                  foregroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.height10)),
                                  side: BorderSide.none),
                              child: const Text("Delete"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
                
                }else if(snapshot.hasError){

                  return Center(child: Text(snapshot.error.toString()),
                  
                  );
                }else{

                  return const Center(child: Text("Something went wrong"),);

                }

              }else{
                return const Center(child: CircularProgressIndicator(),
                );
              }
              
            },
             
          ),
        ),
      ),
    );
  }
}