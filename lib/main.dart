import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/routes/health_routes_constant.dart';
import 'package:provider_mvvm/view/registeration/signin/signin_page.dart';
import 'package:provider_mvvm/view_model/notifiers/AuthViewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(create: (_) => AuthViewModel.getInstance)
      ],
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignInPages(),
      ),
    );
  }
}
