import 'package:crypto_x/core/core.dart';
import 'package:crypto_x/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Al-Amin',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                            color: AppColors.accent,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                            color: Colors.black,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: AppColors.whiteGrey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: SvgPicture.asset(AppImages.icNotificationSVG),
            )
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AmountCardWidget(),
            ActionSectionWidget(),
          ],
        ),
      ),
    );
  }
}
