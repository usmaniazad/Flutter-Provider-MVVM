import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/registeration/forget/forget_pages.dart';
import '../view/registeration/signin/sign_with_number.dart';
import '../view/registeration/signin/signin_page.dart';
import '../view/registeration/signup/signup_pages.dart';
import 'health_routes_constant.dart';
 class Routes{

   // Route<dynamic>? onGenerateRoute(RouteSettings settings){
   //   switch(settings.name){
   //     case RouteConstant.initialRoutes:
   //       return MaterialPageRoute(settings:settings,builder: builder);
   //   }
   // }





 static final routes=[
   GetPage(
       name: RouteConstant.SIGNINROUTS,
       page: () => SignInPages(),
       transition: Transition.rightToLeft,
       transitionDuration: const Duration(milliseconds: 200)
   ),
   GetPage(
       name: RouteConstant.FORGETPASSWORDROUTE,
       page: () => const ForgetPasswordPage(),
       transition: Transition.rightToLeft,
       transitionDuration: const Duration(milliseconds: 200)
   ),
   GetPage(
       name: RouteConstant.SIGNUPROUTES,
       page: () => const SignUpPages(),
       transition: Transition.rightToLeft,
       transitionDuration: const Duration(milliseconds: 200)
   ),
   GetPage(
       name: RouteConstant.SIGNWITHNUMBERROUTS,
       page:()=>const SignWithNumber(),
       transition: Transition.rightToLeft,
       transitionDuration:const Duration(milliseconds: 200)
   )
 ];
 }
