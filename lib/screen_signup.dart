import 'package:flutter/material.dart';
import 'package:micro_services/widgets/MyTestField.dart';
import 'package:micro_services/widgets/Mycontainer.dart';

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
                  color: Color(0xffED1C24),
                  fontFamily: 'PoetsenoneRegular',
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
              padding: const EdgeInsets.symmetric(horizontal: 60),
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
                      Icons.remove_red_eye_outlined,
                      color: Colors.black,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Mycontainer(
                    height: 43,
                    width: 264,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
