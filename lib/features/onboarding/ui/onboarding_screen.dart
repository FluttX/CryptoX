import 'package:crypto_x/core/common/common.dart';
import 'package:crypto_x/core/core.dart';
import 'package:crypto_x/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.linearBackgroundGradiant,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.cloudPNG,
              height: 300,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultSpace * 2,
                  ),
                  child: Text(
                    'Convert cash into crypto, simply',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 32.0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultSpace * 4,
                  ),
                  child: Text(
                    'Connect your bank account and get access to more than 76000 crypto currencies and tokens.',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white, fontSize: 14.0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Container(
              height: 82,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: AppColors.linearButtonGradiant,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.md,
                vertical: AppSizes.sm,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationMenuScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: Row(
                  children: [
                    const CircularButtonWidget(),
                    const SizedBox(width: AppSizes.spaceBtwItems),
                    Text(
                      'Get Started',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
