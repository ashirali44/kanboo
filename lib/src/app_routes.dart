import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kanboo/src/screens/intro/onboard_screen.dart';
import 'constants/routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.intro,
      page: () => OnBoardScreen(),
    ),





  ];
}
