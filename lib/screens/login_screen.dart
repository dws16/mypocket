import 'package:flutter/material.dart';
import 'package:mypocket/constant/color_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      height: 341,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fitWidth,
        image: AssetImage('assets/images/pocket.png'),
      )),
    );
  }

  welcomeLogoPocket() {
    return Container(
      margin: EdgeInsets.only(top: 45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Text(
                'Welcome To',
                style: TextStyle(
                    fontSize: 39, color: myPrimary, fontFamily: 'Cream'),
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
                height: 134,
              ),
              Text(
                'MyPocket',
                style: TextStyle(
                    fontSize: 32, color: myPrimary, fontFamily: 'Cream'),
              ),
            ],
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
                            labelText: 'Username',
                            labelStyle: TextStyle(
                                color: myPrimary, fontFamily: 'Cream'),
                            prefixIcon: Icon(
                              Icons.person,
                              color: myPrimary,
                            )),
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
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: myPrimary,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: myPrimary,
                            )),
                        obscureText: true,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print('Forgot nih');
                        },
                        // margin: EdgeInsets.only(top: 5, bottom: 10),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontSize: 12,
                              color: myPrimary,
                              fontFamily: 'Cream'),
                        )),
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
                            'Login',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Cream'),
                          ),
                        )),
                    TextButton(
                      onPressed: () {
                        print('Daftar nih');
                      },
                      child: Text('Create Account',
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
