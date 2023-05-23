import 'package:flutter/material.dart';
import 'package:micro_services/widgets/MyContainer.dart';
import 'package:micro_services/widgets/MyTestField.dart';
import 'package:micro_services/widgets/colors.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MicroServicesColor.whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Text(
                'Add more details',
                style: TextStyle(
                  color: MicroServicesColor.blackColor,
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 24,
                ),
              ),
              SizedBox(
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: MicroServicesColor.blackColor,
                          )),
                      child: Center(
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/Profile.png'),
                            radius: 80,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 70),
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: MicroServicesColor.blueColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: MicroServicesColor.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyTextField(
                    hintText: 'Gender',
                    height: 46,
                    width: 138,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
                  ),
                  MyTextField(
                    hintText: 'Date of birth',
                    height: 46,
                    width: 141,
                    keyboardType: TextInputType.emailAddress,
                    color: MicroServicesColor.whiteColor,
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyTextField(
                    hintText: 'Country',
                    height: 47,
                    width: 138,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  MyTextField(
                    hintText: 'City',
                    height: 47,
                    width: 141,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
              MyTextField(
                hintText: 'Address',
                height: 46,
                width: 305,
                keyboardType: TextInputType.emailAddress,
                icon: Icon(
                  Icons.my_location_outlined,
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
                      'Finish',
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
