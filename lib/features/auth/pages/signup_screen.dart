import 'package:flutter/material.dart';
import 'package:market/components/inputs/custom_textformfield.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/main/main_screen.dart';
import 'package:market/features/auth/pages/login_screen.dart';
import 'package:market/features/auth/widgets/for_all/auth_header.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool obscureText = true;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                AuthHeader(
                  HeaderText: "Signup",
                  SubText: 'Enter your credentials to continue',
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextformfield(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'PLease enter your Username';
                    }
                    return null;
                  },
                  labelText: 'Username',
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextformfield(
                  labelText: 'Email',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'PLease enter your Username';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextformfield(
                    obscureText: obscureText,
                    labelText: 'Password',
                    onChanged: (value) {},
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'PLease enter your Password';
                      } else if (value!.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(obscureText
                          ? Icons.visibility_off
                          : Icons.remove_red_eye),
                      color: MColors.greyColor,
                    )),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'By continuing you agree to our ',
                                style: TextStyle(
                                  color: MColors.greyColor,
                                )),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Text(
                                'Terms of Service',
                                style: TextStyle(
                                  color: MColors.PrimaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            TextSpan(
                                text: '\nand',
                                style: TextStyle(
                                  color: MColors.greyColor,
                                )),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Text(
                                ' Privacy and Policy',
                                style: TextStyle(
                                  color: MColors.PrimaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                MainButton(
                    text: 'Sign Up',
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        pushWithReplacement(context, const MainScreen());
                      }
                    }),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'already have an account?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: TextButton(
                              onPressed: () {
                                pushTo(context, LoginScreen());
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: MColors.PrimaryColor,
                                    fontWeight: FontWeight.w600),
                              )))
                    ]))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
