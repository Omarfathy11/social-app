import 'package:flutter/material.dart';
import 'package:nationsapp/core/routing/routes.dart';
import 'package:nationsapp/features/onboarding/onboarding.dart';

import '../../features/login/ui/login_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.LoginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/register':
      //  return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/profile':
      //  return MaterialPageRoute(builder: (_) => ProfileScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}