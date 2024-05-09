import 'package:crypto_x/core/core.dart';
import 'package:crypto_x/data/dummy_data.dart';
import 'package:crypto_x/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionSectionWidget extends StatelessWidget {
  const ActionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace,
          ),
          child: Text(
            'Actions',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.headlineTextColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: AppDummyData.actions.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.spaceBtwItems,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ActionButtonWidget(action: AppDummyData.actions[index]);
            },
          ),
        ),
      ],
    );
  }
}
