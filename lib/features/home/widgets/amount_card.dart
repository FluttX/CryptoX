import 'package:crypto_x/core/common/common.dart';
import 'package:crypto_x/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AmountCardWidget extends StatelessWidget {
  const AmountCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      color: Colors.white,
      child: Stack(
        children: [
          /// BACKGROUND
          Positioned(
            top: 20,
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              width: double.infinity,
              margin: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                AppImages.amountBGSVG,
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// AMOUNT INFO
          Positioned(
            top: 20,
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              width: double.infinity,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.upCurveSVG),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),
                      Text(
                        '2.70% Today',
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: AppColors.accent, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$12,670.90',
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Colors.white,
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// ADD BUTTON
          Positioned(
            bottom: 25,
            left: 40,
            child: CircularButtonWidget(
              onTap: () {},
              height: 50,
              width: 50,
              icon: Icons.add,
              iconSize: 30,
              gradient: AppColors.linearAddCircleGradiant,
            ),
          ),

          /// COIN STACK ANIMATION
          Positioned(
            bottom: -30,
            right: -60,
            child: Lottie.asset(
              'assets/anim/coin_stack.json',
              width: 300,
              height: 250,
              fit: BoxFit.contain,
              repeat: false,
            ),
            //child: Image.asset("assets/coin_stack.png"),
          ),
        ],
      ),
    );
  }
}
