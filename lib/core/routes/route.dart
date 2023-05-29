import 'package:task_flutter/features/home/view/screen%20/home_screen.dart';
import '../../features/auth/view/screen/signup_screen.dart';
import 'package:get/get.dart';
import '../../features/profile/view/screen/perssonal_information_screen.dart';
import '../../features/profile/view/screen/profile_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.signScreen,
      page: () => SignupScreen(),
      // binding: Binding()
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      //binding: Binding()
    ),
    GetPage(
      name: Routes.profileScreen,
      page: () =>  ProfileScreen(),
      // binding: Binding()
    ),
    GetPage(
      name: Routes.personalInformationScreen,
      page: () => const PersonalInformationScreen(),
      // binding: Binding()
    ),


  ];
}

class Routes {
  static const signScreen = '/signup_screen';
  static const homeScreen = '/home_screen';
  static const profileScreen = '/profile_screen';
  static const personalInformationScreen = '/personal_information_screen';

}
