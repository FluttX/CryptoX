import 'package:crypto_x/core/common/common.dart';
import 'package:crypto_x/core/core.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';

class NavigationMenuScreen extends StatefulWidget {
  const NavigationMenuScreen({super.key});

  @override
  State<NavigationMenuScreen> createState() => _NavigationMenuScreenState();
}

class _NavigationMenuScreenState extends State<NavigationMenuScreen> {
  GlobalKey<CurvedNavigationBarState> bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentNavIndex,
        builder: (context, value, child) {
          return CurvedNavigationBar(
            key: bottomNavKey,
            index: value,
            backgroundColor: Colors.white,
            color: AppColors.primary,
            buttonBackgroundColor: AppColors.primary,
            items: [
              CurvedNavigationBarItem(
                label: value == 0 ? null : 'Home',
                labelStyle: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: value == 0 ? AppColors.accent : Colors.white,
                        fontSize: 11.0,
                        fontWeight:
                            value == 0 ? FontWeight.bold : FontWeight.w500,
                      ),
                ),
                child: SvgPicture.asset(
                  AppImages.homeActiveSVG,
                ),
              ),
              CurvedNavigationBarItem(
                label: value == 1 ? null : 'Wallet',
                labelStyle: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: value == 1 ? AppColors.accent : Colors.white,
                        fontSize: 11.0,
                        fontWeight:
                            value == 1 ? FontWeight.bold : FontWeight.w500,
                      ),
                ),
                child: SvgPicture.asset(AppImages.walletSVG),
              ),
              const CurvedNavigationBarItem(
                child: Text(''),
              ),
              CurvedNavigationBarItem(
                label: value == 3 ? null : 'Market',
                labelStyle: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: value == 3 ? AppColors.accent : Colors.white,
                        fontSize: 11.0,
                        fontWeight:
                            value == 3 ? FontWeight.bold : FontWeight.w500,
                      ),
                ),
                child: SvgPicture.asset(AppImages.marketSVG),
              ),
              CurvedNavigationBarItem(
                label: value == 4 ? null : 'Settings',
                labelStyle: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: value == 4 ? AppColors.accent : Colors.white,
                        fontSize: 11.0,
                        fontWeight:
                            value == 4 ? FontWeight.bold : FontWeight.w500,
                      ),
                ),
                child: SvgPicture.asset(AppImages.settingsSVG),
              ),
            ],
            letIndexChange: (_) => true,
            onTap: (index) {
              NavigationMenuState.onChangeNavMenu(index);
            },
          );
        },
      ),
      floatingActionButton: CircularButtonWidget(
        onTap: () {
          final navBarState = bottomNavKey.currentState;
          navBarState?.setPage(2);
        },
        height: 65,
        width: 65,
        child: Image.asset(AppImages.arrowSwapFillPNG),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
