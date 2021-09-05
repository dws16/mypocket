import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypocket/constant/color_constant.dart';
import 'package:mypocket/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [customeShape(), welcomeLogoPocket()],
            ),
          ),
        ));
  }

  customeShape() {
    return Container(
      height: 320,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/pocket.png'),
      )),
    );
  }

  welcomeLogoPocket() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Text(
                'Register',
                style: TextStyle(
                    fontSize: 39, color: myPrimary, fontFamily: 'Cream'),
              ),
              SvgPicture.asset(
                'assets/images/register.svg',
                height: 180,
              )
            ],
          ),
          SizedBox(
            height: 70,
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
                          labelText: 'Name',
                          labelStyle:
                              TextStyle(color: myPrimary, fontFamily: 'Cream'),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      // margin: EdgeInsets.symmetric(vertical: 1),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(color: myPrimary)),
                          labelText: 'Username',
                          labelStyle:
                              TextStyle(color: myPrimary, fontFamily: 'Cream'),
                        ),
                      ),
                    ),
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
                          labelStyle:
                              TextStyle(color: myPrimary, fontFamily: 'Cream'),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: myPrimary)),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: myPrimary, fontFamily: 'Cream'),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: myPrimary,
                            )),
                        obscureText: true,
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: myPrimary)),
                            labelText: 'Repeat Password',
                            labelStyle: TextStyle(
                                color: myPrimary, fontFamily: 'Cream'),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: myPrimary,
                            )),
                        obscureText: true,
                      ),
                    ),
                    Container(
                        height: 33,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginScreen()));
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
                            'Sign me up!',
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
