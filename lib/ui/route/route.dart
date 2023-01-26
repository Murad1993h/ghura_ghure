import 'package:get/get.dart';
import 'package:ghura_ghure/views/auth/sign_in.dart';
import 'package:ghura_ghure/views/auth/sign_up.dart';
import 'package:ghura_ghure/views/onboarding_screen.dart';
import 'package:ghura_ghure/views/privacy_police.dart';
import 'package:ghura_ghure/views/splash_screen.dart';
import 'package:ghura_ghure/views/user_form.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signup = '/sign-up-screen';
const String signin = '/sign-in-screen';
const String userForm = '/ user-form-screen';
const String privacyPolicy = '/ privacy-policy-screen';


List<GetPage> getPage =[
  GetPage(name: splash,
      page: () => SplashScreen(),
  ),
  GetPage(name: onboarding,
      page: () => OnboardingScreen(),),

  GetPage(name: signup,
      page: ()=> SignUp(),),
  GetPage(name: signin,
      page: ()=> SignIn(),),

  GetPage(name: userForm,
      page: () => UserForm(),),

  GetPage(name: privacyPolicy,
    page: () => PrivacyPolice(),),
];