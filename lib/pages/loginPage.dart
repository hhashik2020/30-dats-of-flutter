import 'package:day2/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome $name',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter Your Name",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your Password",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Password";
                        } else if (value.length < 4) {
                          return "Password length should be at least four";
                        }
                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  // onTap: () async {
                  //   setState(() {
                  //     changeButton = true;
                  //   });

                  //   await Future.delayed(Duration(seconds: 1));
                  //   await Navigator.pushNamed(context, MyRoutes.homeRoute);

                  //   setState(() {
                  //     changeButton = false;
                  //   });
                  // },

                  onTap: () => moveToHome(context),

                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                    // decoration: BoxDecoration(
                    //     color: Colors.purple,
                    //     borderRadius: BorderRadius.circular(changeButton ?50: 8)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
