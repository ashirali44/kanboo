import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:kanboo/src/screens/auth/forgot_password_screen.dart';
import 'package:kanboo/src/screens/auth/main_auth.dart';
import 'package:kanboo/src/screens/auth/sign_in_email_screen.dart';
import 'package:kanboo/src/screens/auth/sign_up_email_screen.dart';
import 'package:kanboo/src/screens/dashboard/dashboard.dart';
import 'package:kanboo/src/screens/dashboard/games_view.dart';
import 'package:kanboo/src/screens/game/create_game.dart';
import 'package:kanboo/src/screens/intro/onboard_screen.dart';
import 'package:kanboo/src/screens/notifications_screen.dart';
import 'constants/routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.intro,
      transition: Transition.fade,
      page: () => OnBoardScreen(),
    ),

    GetPage(
      name: AppRoutes.mainauth,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => MainAuthScreen(),
    ),

    GetPage(
      name: AppRoutes.mainauth,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      page: () => MainAuthScreen(),
    ),

    GetPage(
      name: AppRoutes.siginInEmail,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 200),
      page: () => SignInEmail(),
    ),

    GetPage(
      name: AppRoutes.signUpEmail,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 200),
      page: () => SignUpScreen(),
    ),

    GetPage(
      name: AppRoutes.forgotPasssword,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 200),
      page: () => ForgotPassword(),
    ),

    GetPage(
      name: AppRoutes.mainDashboard,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 200),
      page: () => MainDashboardPage(),
    ),

    GetPage(
      name: AppRoutes.notificationScreen,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 200),
      page: () => NotificationScreen(),
    ),

    GetPage(
      name: AppRoutes.createGame,
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 200),
      page: () => CreateGameScreen(),
    ),
  ];
}
