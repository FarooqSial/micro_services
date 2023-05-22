import 'package:flutter/material.dart';
import 'package:micro_services/widgets/MyTestField.dart';
import 'package:micro_services/widgets/MyContainer.dart';
import 'package:micro_services/widgets/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff000000),
            ),
          ),
        ),
        body: Column(
          children: [
            Text(
              'Signup',
              style: TextStyle(
                color: Color(0xff000000),
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
              'Let’s Get It Started!',
              style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'PoppinsMedium',
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  MyTextField(
                    hintText: 'First Name',
                    height: 43,
                    width: 278,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    hintText: 'Last Name',
                    height: 43,
                    width: 278,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                  SizedBox(
                    height: 20,
                  ),
                  MyContainer(
                    height: 43,
                    width: 264,
                    color: Color(0xffED1C24),
                    child: Center(
                      child: Text('Signup'),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          endIndent: 5,
                          indent: 5,
                        ),
                      ),
                      Center(
                        child: Text('OR'),
                      ),
                      Expanded(
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
                        color: Color(0xff365194),
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
                        color: Color(0xff000000),
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
                                color: Color(0xffFFFFFF),
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
                          'Already have an account  ',
                          style: TextStyle(
                            color: Color(0xff979797),
                            fontSize: 13,
                            fontFamily: 'PoppinsRegular',
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Color(0xff979797),
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xffED1C24),
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
