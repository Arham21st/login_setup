

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/colors/colors.dart';
import '../../../../../constants/dimensions/app_dimensions.dart';

class UserProfileMenuWidget extends StatelessWidget {
  const UserProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {

    var isDark = Get.isDarkMode;
    var iconColor = isDark ? tPrimaryColor : tAccentColor;

    return ListTile(
      onTap: onPress,
      leading: Container(
        width: Dimensions.height20*2,
        height: Dimensions.height20*2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height20*5),
          color: iconColor.withOpacity(0.1),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleLarge?.apply(color: textColor)),
      trailing: endIcon? Container(
          width: Dimensions.height30,
          height: Dimensions.height30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.height20*5),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Icon(Icons.arrow_forward_ios, size: Dimensions.height20, color: Colors.grey)) : null,
    );
  }
}