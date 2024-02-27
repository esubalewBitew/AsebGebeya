import "package:asebmarket/features/authentication/screens/password_configuration/forget_password.dart";
import "package:asebmarket/navigation_menu.dart";
import "package:asebmarket/utils/constants/colors.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:asebmarket/common/styles/spacing_styles.dart";
import "package:asebmarket/utils/constants/image_strings.dart";
import "package:asebmarket/utils/constants/sizes.dart";
import "package:asebmarket/utils/constants/text_strings.dart";
import "package:asebmarket/utils/helpers/helper_functions.dart";
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      height: 100,
                      image: AssetImage(!dark
                          ? TImages.defaultAppLogo
                          : TImages.defaultAppLogo),
                    ),
                    Text(
                      TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium!,
                    ),
                    const SizedBox(height: TSizes.sm),
                    Text(
                      TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium!,
                    )
                  ],
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.00, left: 0.0, bottom: 10.00, right: 0.0),
                    child: Column(
                      children: [
                        //email
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email,
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        //password
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),

                        ///remember me & Forget Password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: true, // Set the value of the checkbox
                                  onChanged: (bool? value) {
                                    // Handle checkbox state change
                                  },
                                ),
                                // const Text(TTexts.rememberMe),
                                GestureDetector(
                                  onTap: () {
                                    // Handle onTap event
                                    print("Text tapped");
                                    // Navigate to the LoginScreen using GetX
                                    // Get.to(ForgetPassword());
                                    Get.to('/forget-password');
                                  },
                                  child: Text(
                                    TTexts.rememberMe,
                                    // Add additional styling if needed
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                // Handle "Forget Password" button press
                                Get.to(() => ForgetPassword());
                              },
                              child: const Text(TTexts.forgetPassword),
                            ),
                          ],
                        ),

                        ///Sign In BUtton
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const NavigationMenu());
                            },
                            child: const Text(TTexts.signIn),
                          ),
                        ),
                        // ElevatedButton(
                        //     onPressed: () {}, child: Text(TTexts.signIn)),
                        const SizedBox(
                          height: 10,
                        ),

                        ///Create Account BUtt
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(TTexts.createAccount),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        child: Divider(
                      color: !dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 10,
                    )),
                    Text(
                      TTexts.orSignInWith,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Flexible(
                        child: Divider(
                      color: !dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 10,
                      endIndent: 15,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 8, right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: TColors
                                  .grey), // Specify the color for the border
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: Image.asset(
                              width: TSizes.md,
                              height: TSizes.md,
                              TImages
                                  .google), // Use Image.asset to load the asset image
                          onPressed: () {
                            print('On press google');
                            // Add onPressed callback to handle button press
                            // Put the logic here to perform an action when the button is pressed
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 8, right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: TColors
                                  .grey), // Specify the color for the border
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: Image.asset(
                              width: TSizes.iconSm,
                              height: TSizes.md,
                              TImages
                                  .facebook), // Use Image.asset to load the asset image
                          onPressed: () {
                            // Add onPressed callback to handle button press
                            // Put the logic here to perform an action when the button is pressed
                          },
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
