import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/modules/login/blocs/login_bindings.dart';
import 'package:loomiproject/modules/login/view/login_view.dart';
import 'package:loomiproject/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
initialBinding: LoginBindings(),
   initialRoute: Routes.LOGIN,
getPages: Routes.createRoutes(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}

