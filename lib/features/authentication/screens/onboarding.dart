import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_string.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_string.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/utils/device/device_utility.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),

          // Dot Nagator Smooth Page Indicator
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: TSizes.defaultSpace,

            child: SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: TColors.dark,
                dotHeight: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
