
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:loomiproject/modules/forgotPassword/blocs/forgot_password_bindings.dart';
import 'package:loomiproject/modules/forgotPassword/view/forgot_password.dart';
import 'package:loomiproject/modules/home/blocs/home_bindings.dart';
import 'package:loomiproject/modules/home/view/home_view.dart';
import 'package:loomiproject/modules/instructionsWereSent/blocs/instruction_were_sent_bindings.dart';
import 'package:loomiproject/modules/instructionsWereSent/view/instruction_were_sent_view.dart';
import 'package:loomiproject/modules/login/blocs/login_bindings.dart';
import 'package:loomiproject/modules/login/view/login_view.dart';
import 'package:loomiproject/modules/profile/blocs/profile_bindings.dart';
import 'package:loomiproject/modules/profile/view/profile_view.dart';
import 'package:loomiproject/modules/tellUsMore/blocs/tell_us_more_bindings.dart';
import 'package:loomiproject/modules/tellUsMore/view/tell_us_more_view.dart';
import 'package:loomiproject/modules/welcomeBack/blocs/welcome_back_bindings.dart';
import 'package:loomiproject/modules/welcomeBack/view/welcome_back_view.dart';

class Routes {


  static const String LOGIN = '/login';
  static const String TELLUSMORE = '/tellusmore';
  static const String WELCOMEBACK = '/welcomeback';
  static const String FORGOTPASSWORD = '/forgotpasword';
  static const String INSTRUCTIONSWERESENT = '/instructionsweresent';
  static const String HOME = '/home';
  static const String PROFILE = '/profile';



  static List<GetPage<dynamic>>? createRoutes() {

         return [ GetPage(
        name: Routes.LOGIN,        
        page: () => const LoginView(),
        binding: LoginBindings(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut, 
        transitionDuration: Duration(milliseconds: 500)       
      ),

//-------------------------------------------------------------------------------------------------

          GetPage(
        name: Routes.TELLUSMORE,        
        page: () => const TellUsMoreView(),
        binding: TellUsMoreBindings(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut,
        transitionDuration: Duration(milliseconds: 500)       
      ),

//-------------------------------------------------------------------------------------------------

          GetPage(
        name: Routes.WELCOMEBACK,        
        page: () => const WelcomeBackView(),
        binding: WelcomeBackBindings(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut,
        transitionDuration: Duration(milliseconds: 500)       
      ),

//-------------------------------------------------------------------------------------------------

          GetPage(
        name: Routes.FORGOTPASSWORD,        
        page: () => const ForgotPasswordView(),
        binding: ForgotPasswordBindings(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut,
        transitionDuration: Duration(milliseconds: 500)       
      ),

//-------------------------------------------------------------------------------------------------

          GetPage(
        name: Routes.INSTRUCTIONSWERESENT,        
        page: () => const InstructionsWereSentView(),
        binding: InstructionWereSentBindings(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut,
        transitionDuration: Duration(milliseconds: 500)       
      ),

//-------------------------------------------------------------------------------------------------

          GetPage(
        name: Routes.HOME,        
        page: () => const HomeView(),
        binding: HomeBindings(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut,
        transitionDuration: Duration(milliseconds: 500)       
      ),

//-------------------------------------------------------------------------------------------------

          GetPage(
        name: Routes.PROFILE,        
        page: () => const ProfileView(),
        binding: ProfileBindings(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut,
        transitionDuration: Duration(milliseconds: 500)       
      ),



];

  }

  
}