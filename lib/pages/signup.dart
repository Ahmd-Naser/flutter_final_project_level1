// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 27,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 33,
                          fontFamily: "myfont",
                          color: Colors.grey[800]),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      width: 233,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                        decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66)),
                        width: 266,
                        child: TextField(
                            decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email : ",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.person),
                        ))),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 27),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                        decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66)),
                        width: 266,
                        child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password :  ",
                              hintStyle: TextStyle(fontSize: 19),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility),
                            ))),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66))),
                      ),
                      child: Text(
                        "Signup",
                        style: TextStyle(fontSize: 27, color: Colors.grey[200]),
                      ),
                    ),

                    SizedBox(
                      height: 33,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?  "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            "Log in",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),

                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            color: Colors.purple[900],
                          )),
                          Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.purple[900],
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            color: Colors.purple[900],
                          )),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 17,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(9),
                          child: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: Colors.purple[400],
                            height: 27,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          padding: EdgeInsets.all(9),
                          child: SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: Colors.purple[400],
                            height: 27,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          padding: EdgeInsets.all(9),
                          child: SvgPicture.asset(
                            "assets/icons/google-plus.svg",
                            color: Colors.purple[400],
                            height: 27,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,

                    //   children: [
                    //     SvgPicture.asset("assets/icons/facebook.svg"),
                    //     SvgPicture.asset("assets/icons/twitter.svg" , width: 22,),
                    //     SvgPicture.asset("assets/icons/google-plus.svg" , width: 22,),

                    //   ],
                    // ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/signup_top.png",
                  width: 111,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 111,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
