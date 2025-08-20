import 'package:flutter/material.dart';
import 'package:market/components/inputs/custom_textformfield.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/signup_screen.dart';
import 'package:market/features/auth/widgets/for_all/auth_header.dart';
import 'package:market/features/main/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthHeader(
                    SubText: 'Enter your emails and password',
                    HeaderText: 'Login',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextformfield(
                    labelText: 'Email',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'PLease enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextformfield(
                      labelText: 'Password',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'PLease enter your Password';
                        } else if (value!.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      obscureText: obscureText,
                      onChanged: (value) {},
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            color: MColors.greyColor,
                          ))),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainButton(
                      text: 'Login',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          pushWithReplacement(context, const MainScreen());
                        }
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TextButton(
                                onPressed: () {
                                  pushTo(context, SignupScreen());
                                },
                                child: Text(
                                  'Signup',
                                  style: TextStyle(
                                    color: MColors.PrimaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
