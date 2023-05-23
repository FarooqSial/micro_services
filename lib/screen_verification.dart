import 'package:flutter/material.dart';
import 'package:micro_services/widgets/MyContainer.dart';
import 'package:micro_services/widgets/MyTestField.dart';
import 'package:micro_services/widgets/colors.dart';

import 'Screen_create_account.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MicroServicesColor.whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Image(
                height: 208,
                width: 208,
                image: AssetImage('images/Verification.png'),
              ),
              Text(
                'Verification',
                style: TextStyle(
                  color: MicroServicesColor.blackColor,
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 24,
                ),
              ),
              Text(
                'Enter the OTP code sent to your email',
                style: TextStyle(
                  color: MicroServicesColor.blackColor,
                  fontFamily: 'PoppinsRegular',
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyTextField(
                    hintText: '5',
                    height: 50,
                    width: 50,
                    keyboardType: TextInputType.number,
                  ),
                  MyTextField(
                    hintText: '9',
                    height: 50,
                    width: 50,
                    keyboardType: TextInputType.number,
                  ),
                  MyTextField(
                    hintText: '0',
                    height: 50,
                    width: 50,
                    keyboardType: TextInputType.number,
                  ),
                  MyTextField(
                    hintText: '1',
                    height: 50,
                    width: 50,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
              Text(
                'Did not receive a code?',
                style: TextStyle(
                  color: MicroServicesColor.textColor,
                  fontSize: 18,
                  fontFamily: 'PoppinsSemiBold',
                ),
              ),
              Text(
                'RESEND',
                style: TextStyle(
                  color: MicroServicesColor.redColor,
                  fontSize: 18,
                  fontFamily: 'PoppinsSemiBold',
                ),
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
                          builder: (context) => CreateAccountScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Done',
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
      ),
    );
  }
}
