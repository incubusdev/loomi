
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:loomiproject/modules/login/blocs/login_bindings.dart';
import 'package:loomiproject/modules/login/view/login_view.dart';

class Routes {


  static const String LOGIN = '/login';
  static const String HOME = '/home';



  static List<GetPage<dynamic>>? createRoutes() {

         return [ GetPage(
        name: Routes.LOGIN,        
        page: () => LoginView(),
        binding: LoginBindings(),
        transition: Transition.rightToLeft,
        curve: Curves.easeInOut        
      ),

//-------------------------------------------------------------------------------------------------
          GetPage(
        name: Routes.HOME,        
        page: () => LoginView(),
        binding: LoginBindings(),
        transition: Transition.rightToLeft,
        curve: Curves.easeInOut        
      )];

  }

  
}