import "package:asebmarket/features/authentication/screens/password_configuration/reset_password.dart";
import "package:asebmarket/utils/constants/sizes.dart";
import "package:asebmarket/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            const Text(
              TTexts.forgetPassword,
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Adjust the font weight as needed
                // Add additional styling if needed
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              TTexts.forgetPasswordSubTitle,
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
              padding: const EdgeInsets.only(top: 15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => ResetPassword());
                    },
                    // onPressed: () => Get.to(() => const ResetPassword()),
                    child: const Text(TTexts.submit)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
