import 'package:coding/Shared/Widgets.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),color: Colors.black,)
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Let's Get Started!",
                style:
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    "Create an account to Q Allure to get all features",
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                width: 350,
                child: FormTextField(
                    HintText: "Name",
                    IconSymbol: Icons.person_outline,
                    TextColor: Colors.blue,
                    Bordercolor: Colors.blue,
                    BorderRadiusVal: 25.0,
                    ObsecureText: false,
                    keyboardType: TextInputType.name)
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 350,
                child: FormTextField(
                    HintText: "Email",
                    IconSymbol: Icons.email_outlined,
                    TextColor: Colors.blue,
                    Bordercolor: Colors.blue,
                    BorderRadiusVal: 25.0,
                    ObsecureText: false,
                    keyboardType: TextInputType.emailAddress)
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 350,
                child: FormTextField(
                    HintText: "Phone",
                    IconSymbol: Icons.person_outline_rounded,
                    TextColor: Colors.blue,
                    Bordercolor: Colors.blue,
                    BorderRadiusVal: 25.0,
                    ObsecureText: false,
                    keyboardType: TextInputType.phone)
              ),
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
                margin: EdgeInsets.only(top: 40),
                width: 350,
                child: FormTextField(
                    HintText: "Confirm Password",
                    IconSymbol: Icons.lock_outline,
                    TextColor: Colors.blue,
                    Bordercolor: Colors.blue,
                    BorderRadiusVal: 25.0,
                    ObsecureText: true,
                    keyboardType: TextInputType.text)
              ),
              Container(
                  margin: EdgeInsets.only(top: 25),
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Tap");
                    },
                    child: Text(
                      "CREATE",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 55, 0, 160)),
                    //   side: BorderSide(width: 1,color: Colors.white),
                    // ),
                    style: ElevatedButton.styleFrom(
                        onPrimary: Color.fromARGB(255, 35, 67, 255),
                        side: BorderSide(width: 1, color: Colors.blueAccent),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                  )),
              SizedBox(
                height: 20,
              ),
              RichText(text: TextSpan(
                  children: [
                    TextSpan(text:"Already have an account? ",style: TextStyle(fontSize: 15,color: Colors.black45)),
                    TextSpan(text:"Login here",style: TextStyle(fontSize: 15,color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                  ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
