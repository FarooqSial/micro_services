import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Color(0xff000000),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Image.asset(
                  'images/Logo.png',
                  height: 100,
                  width: 130,
                ),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 43,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.only(top: 5, left: 15),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Color(0xffF2F2F2),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Color(0xffF2F2F2),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Color(0xff64B5F6),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 43,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      contentPadding: EdgeInsets.only(top: 5, left: 15),
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Color(0xffF2F2F2),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Color(0xffF2F2F2),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Color(0xff64B5F6),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Login ',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 43,
                  width: 266,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(
                      0xffED1C24,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
