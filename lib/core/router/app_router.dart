import 'package:dalel_app1/core/utils/app_strings.dart';
import 'package:dalel_app1/feautures/auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:dalel_app1/feautures/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:dalel_app1/feautures/auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:dalel_app1/feautures/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(routes: [
  GoRoute(
    path: AppStrings.intialRoute,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: AppStrings.onBordingRoute,
    builder: (context, state) => OnBoardingView(),
  ),
  GoRoute(
    path: AppStrings.singUpRoute,
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: AppStrings.loginRoute,
    builder: (context, state) => const SignInView(),
  )
]);
