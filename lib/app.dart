import 'package:asebmarket/features/authentication/screens/login/login_form.dart';
import 'package:asebmarket/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:asebmarket/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:asebmarket/features/shop/screens/Onboarding/onboarding.dart';
import 'package:asebmarket/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:asebmarket/utils/constants/text_strings.dart';
import 'package:asebmarket/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      getPages: [
        GetPage(
            name: '/', page: () => LoginScreen()), // Define your login route
        GetPage(
            name: '/forget-password',
            page: () => ResetPassword()), // Define your forget password route
        // Add more routes as needed
      ],
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              // Navigate to the LoginScreen using GetX
              Get.to(NavigationMenu());
            },
            child: OnBoardingScreen(),
          ),
        ),
      ),
    );
  }
}
