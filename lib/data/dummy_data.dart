import 'package:crypto_x/core/core.dart';
import 'package:crypto_x/features/home/home.dart';

class AppDummyData {
  static List<ActionModel> actions = [
    ActionModel(
      id: '2',
      name: 'Receive',
      image: AppImages.receiveHandPNG,
      background: AppColors.accent,
    ),
    ActionModel(
      id: '2',
      name: 'Send',
      image: AppImages.sendMoneyPNG,
      background: AppColors.mediumPurple,
    ),
    ActionModel(
      id: '1',
      name: 'Swap',
      image: AppImages.swapMoneyPNG,
      background: AppColors.lightPurple,
    ),
  ];

  static List<MoverModel> movers = [
    MoverModel(
      id: '1',
      change: '+34.98%',
      amount: '\$21.58',
      currency: 'BTC',
      image: AppImages.purpleGraph,
    ),
    MoverModel(
      id: '2',
      change: '+66.25%',
      amount: '\$35.16',
      currency: 'BTC',
      image: AppImages.pinkGraph,
    ),
    MoverModel(
      id: '3',
      change: '+36.25%',
      amount: '\$15.16',
      currency: 'BTC',
      image: AppImages.purpleGraph,
    ),
  ];
}
