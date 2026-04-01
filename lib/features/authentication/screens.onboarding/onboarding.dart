import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_string.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_string.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onBoardingTitle1, subtitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onBoardingTitle2, subtitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onBoardingTitle3, subtitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          OnBoardingSkip()
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
    return Positioned(top: TDeviceUtils.getAppBarHeight(), right: TSizes.defaultSpace, child: TextButton(onPressed: (){}, child: const Text("Skip")), );
  }
}


