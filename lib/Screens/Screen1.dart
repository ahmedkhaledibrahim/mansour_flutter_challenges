import 'package:coding/Shared/Widgets.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/access_screen1.png',
                        height: 290,
                        width: 280,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 255,
                    left: 113,
                    child: Text(
                      "Welcome back!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    "Log in to your existant account of Q Allure",
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 350,
                  child: FormTextField(
                      HintText: "Email",
                      IconSymbol: Icons.person_outline_rounded,
                      TextColor: Colors.blue,
                      Bordercolor: Colors.blue,
                      BorderRadiusVal: 25.0,
                      ObsecureText: false,
                      keyboardType: TextInputType.emailAddress)),
              Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 350,
                  child: FormTextField(
                      HintText: "Password",
                      IconSymbol: Icons.lock_outline,
                      TextColor: Colors.blue,
                      Bordercolor: Colors.blue,
                      BorderRadiusVal: 25.0,
                      ObsecureText: true,
                      keyboardType: TextInputType.text)
              ),
              Container(
                margin: EdgeInsets.only(right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 12),
                      ),
                      onTap: () {
                        print("Tap");
                      },
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Tap");
                    },
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        onPrimary: Color.fromARGB(255, 35, 67, 255),
                        side: BorderSide(width: 1, color: Colors.blueAccent),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                "Or connect using",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 128,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 58, 68, 157))),
                          icon: Image.asset(
                            "assets/images/facebook.png",
                            width: 30,
                            height: 30,
                          ),
                          label: Text("Facebook"))),
                  Container(
                      width: 128,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 221, 76, 57))),
                          icon: Image.asset(
                            "assets/images/google.png",
                            width: 30,
                            height: 30,
                          ),
                          label: Text("Google"))),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontSize: 15, color: Colors.black45)),
                TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold)),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
