import 'package:crypto_x/core/core.dart';
import 'package:crypto_x/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoverButtonWidget extends StatelessWidget {
  final MoverModel mover;

  const MoverButtonWidget({super.key, required this.mover});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 160,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(mover.image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                mover.change,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Text(
                    mover.currency,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: AppSizes.xs),
                  Text(
                    mover.amount,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey, fontSize: 12.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
