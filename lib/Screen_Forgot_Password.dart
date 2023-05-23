import 'package:flutter/material.dart';
import 'package:micro_services/screen_verification.dart';
import 'package:micro_services/widgets/MyContainer.dart';
import 'package:micro_services/widgets/MyTestField.dart';
import 'package:micro_services/widgets/colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
              'Forgot Password',
              style: TextStyle(
                color: MicroServicesColor.blackColor,
                fontFamily: 'PoppinsSemiBold',
                fontSize: 25,
              ),
            ),
            Text(
              'Enter your email to recover your password ',
              style: TextStyle(
                color: MicroServicesColor.blackColor,
                fontFamily: 'PoppinsRegular',
                fontSize: 13,
              ),
            ),
            MyTextField(
              hintText: 'Email',
              height: 43,
              width: 278,
              keyboardType: TextInputType.emailAddress,
            ),
            MyContainer(
              height: 43,
              width: 264,
              color: MicroServicesColor.redColor,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(
                        color: MicroServicesColor.whiteColor,
                        fontSize: 18,
                        fontFamily: 'PoppinsSemiBold'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
