import 'package:crypto_x/core/core.dart';
import 'package:crypto_x/features/home/model/action_model.dart';

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
      background: AppColors.primary2,
    ),
    ActionModel(
      id: '1',
      name: 'Swap',
      image: AppImages.swapMoneyPNG,
      background: AppColors.primary3,
    ),
  ];
}
