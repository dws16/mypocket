import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypocket/constant/color_constant.dart';
import 'package:mypocket/screens/login_screen.dart';
import 'package:mypocket/screens/register_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [customeShape(), welcomeLogoPocket()],
          ),
        ));
  }

  customeShape() {
    return Container(
      height: 381,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/pocket.png'),
      )),
    );
  }

  welcomeLogoPocket() {
    return Container(
      margin: EdgeInsets.only(top: 45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              SvgPicture.asset(
                'assets/images/forgot_password.svg',
                height: 180,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Forgot your password?',
                style: TextStyle(
                    fontSize: 24, color: myPrimary, fontFamily: 'Cream'),
              ),
              Text(
                'Enter your registered email below to receive password reset instruction',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: myPrimary.withOpacity(0.75), fontFamily: 'Cream'),
              )
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      // margin: EdgeInsets.symmetric(vertical: 1),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: myPrimary)),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: myPrimary, fontFamily: 'Cream'),
                            prefixIcon: Icon(
                              Icons.email,
                              color: myPrimary,
                            )),
                      ),
                    ),
                    Container(
                        height: 33,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            print('Login nih');
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(myPrimary),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                          // color: myPrimary,
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            'Send',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Cream'),
                          ),
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginScreen()));
                      },
                      child: Text('Already have an account? Login',
                          style: TextStyle(
                              fontSize: 12,
                              color: myPrimary,
                              fontFamily: 'Cream')),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
