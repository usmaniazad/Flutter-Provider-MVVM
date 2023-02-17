import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/view_model/notifiers/AuthViewModel.dart';
import '../../../routes/health_routes_constant.dart';
import '../../widget/health_button.dart';
import '../../widget/health_input_field.dart';

class SignInPages extends StatefulWidget {
  SignInPages({Key? key}) : super(key: key);

  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(builder: (context, provider, child) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(top: 90, left: 45),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF4D4D4D)),
                          )),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(left: 45),
                          child: const Text(
                            'Please enter the details below to continue.',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFC5C5C5),
                                fontSize: 13),
                          )),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: HealthInputField(
                          controller: provider.emailController,
                          hint: 'Email ID',
                          images: null,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: HealthInputField(
                          controller: provider.passwordController,
                          hint: 'Password',
                          isObscureText: isPasswordVisible,
                          onPasswordClick: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          images: !isPasswordVisible
                              ? 'assets/images/eyes_hide_logo.png'
                              : 'assets/images/eye_logo.png',
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteConstant.FORGETPASSWORDROUTE);
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.normal,
                                color: Color(0XFFC52C32),
                                fontSize: 15),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            child: HealthButton(
                              isProgressBar: provider.isLoading,
                              label: 'SIGN IN',
                              onTap: () {
                                provider.checkValidation();
                              },
                              color: Color(0XFFC52C32),
                            ),
                          ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color(0xFFDCDCDC), width: 1.0),
                            borderRadius: BorderRadius.circular(6)),
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(RouteConstant.SIGNWITHNUMBERROUTS);
                          },
                          child: const Text(
                            'SIGN IN WITH PHONE NUMBER',
                            style: TextStyle(
                                color: Color(0XFF707070),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Doesn't have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteConstant.SIGNUPROUTES);
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0XFFC52C32),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
