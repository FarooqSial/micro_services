import 'package:flutter/material.dart';
import 'package:micro_services/widgets/MyTestField.dart';
import 'package:micro_services/widgets/MyContainer.dart';
import 'package:micro_services/widgets/colors.dart';

import 'Screen_Forgot_Password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MicroServicesColor.whiteColor,
        appBar: AppBar(
          backgroundColor: MicroServicesColor.whiteColor,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined,
                color: MicroServicesColor.blackColor),
          ),
        ),
        body: Column(
          children: [
            Text(
              'Login',
              style: TextStyle(
                color: MicroServicesColor.blackColor,
                fontFamily: 'PoppinsSemiBold',
                fontSize: 25,
              ),
            ),
            Center(
              child: Text(
                'Logo',
                style: TextStyle(
                  color: MicroServicesColor.redColor,
                  fontFamily: 'PoetSenOneRegular',
                  fontSize: 55,
                ),
              ),
            ),
            Text(
              'Welcome back!',
              style: TextStyle(
                color: MicroServicesColor.blackColor,
                fontFamily: 'PoppinsMedium',
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  MyTextField(
                    hintText: 'Email',
                    height: 43,
                    width: 278,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    hintText: 'Password',
                    height: 43,
                    width: 278,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icon(
                      Icons.visibility_outlined,
                    ),
                    obscureText: true,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: MicroServicesColor.blackColor,
                        fontSize: 12,
                        fontFamily: 'PoppinsRegular',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyContainer(
                    height: 43,
                    width: 264,
                    color: MicroServicesColor.redColor,
                    child: Center(
                      child: Text('Signup'),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Divider(
                          thickness: 1,
                          endIndent: 3,
                          indent: 5,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text('OR'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Divider(
                          endIndent: 5,
                          thickness: 1,
                          indent: 5,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyContainer(
                        height: 37,
                        width: 138,
                        color: MicroServicesColor.blueColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              height: 24,
                              width: 24,
                              image: AssetImage('images/facebook.png'),
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MyContainer(
                        height: 37,
                        width: 138,
                        color: MicroServicesColor.blackColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              height: 20,
                              width: 20,
                              image: AssetImage('images/google.png'),
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                color: MicroServicesColor.whiteColor,
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account  ',
                          style: TextStyle(
                            color: MicroServicesColor.textColor,
                            fontSize: 13,
                            fontFamily: 'PoppinsRegular',
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: MicroServicesColor.textColor,
                        ),
                        Text(
                          'Signup',
                          style: TextStyle(
                            color: MicroServicesColor.redColor,
                            fontFamily: 'PoppinsSemiBold',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
