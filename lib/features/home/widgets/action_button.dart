import 'package:crypto_x/core/core.dart';
import 'package:crypto_x/features/home/model/action_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtonWidget extends StatelessWidget {
  final ActionModel action;

  const ActionButtonWidget({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: Stack(
        children: [
          /// BACKGROUND
          Positioned(
            right: 0,
            top: 30,
            bottom: 0,
            left: 0,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: action.background,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),

          /// TITLE
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  action.name,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                  ),
                ),
                SvgPicture.asset(AppImages.arrowRightSVG),
              ],
            ),
          ),

          /// IMAGE
          Positioned(
            right: 0,
            top: 5,
            child: Image.asset(action.image),
          ),
        ],
      ),
    );
  }
}
