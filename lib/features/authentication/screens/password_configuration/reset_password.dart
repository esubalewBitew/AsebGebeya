import "package:asebmarket/features/authentication/screens/login/login_form.dart";
import "package:asebmarket/utils/constants/image_strings.dart";
import "package:asebmarket/utils/constants/sizes.dart";
import "package:asebmarket/utils/constants/text_strings.dart";
import "package:asebmarket/utils/helpers/helper_functions.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Center(
              child: Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              TTexts.changeYourPasswordTitle,
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Adjust the font weight as needed
                // Add additional styling if needed
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              TTexts.changeYourPasswordSubTitle,
              style: TextStyle(
                fontSize: 13, // Adjust the font size as needed
                fontWeight:
                    FontWeight.normal, // Adjust the font weight as needed
                // Add additional styling if needed
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const LoginScreen());
                    },
                    child: const Text(TTexts.done)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(TTexts.resendEmail),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
