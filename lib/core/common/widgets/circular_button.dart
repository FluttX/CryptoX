import 'package:crypto_x/core/core.dart';
import 'package:flutter/material.dart';

class CircularButtonWidget extends StatelessWidget {
  final double height, width;

  final Widget? child;

  final IconData icon;
  final double? iconSize;

  final Gradient gradient;

  final Color boxShadowColor;

  final Function()? onTap;

  const CircularButtonWidget({
    super.key,
    this.onTap,
    this.height = 57,
    this.width = 57,
    this.icon = Icons.arrow_forward_rounded,
    this.iconSize,
    this.gradient = AppColors.linearCircleGradiant,
    this.boxShadowColor = AppColors.primary,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: boxShadowColor.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
        ),
        alignment: Alignment.center,
        child: child ?? Icon(icon, color: Colors.white, size: iconSize),
      ),
    );
  }
}
