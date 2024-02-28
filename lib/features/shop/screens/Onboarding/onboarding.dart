import 'package:asebmarket/features/authentication/screens/login/login_form.dart';
import 'package:asebmarket/navigation_menu.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/constants/text_strings.dart';
import 'package:asebmarket/utils/device/device_utility.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnBoardingPage(imageUrl: TImages.onBoardingImage1),
              OnBoardingPage(imageUrl: TImages.onBoardingImage2),
              OnBoardingPage(imageUrl: TImages.onBoardingImage3),
            ],
          ),
          const OnBoardingSkip(),

          //
          Positioned(
              bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
              left: TSizes.defaultSpace,
              child: SmoothPageIndicator(
                controller: PageController(),
                count: 3,
                effect: ExpandingDotsEffect(activeDotColor: TColors.dark),
              ))
        ],
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          child: const Text('Skip'),
          onPressed: () {
            Get.to(() => const LoginScreen());
          },
        ));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image: AssetImage(imageUrl)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              TTexts.onBoardingTitle1,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            TTexts.onBoardingSubTitle1,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
