import 'package:flutter/material.dart';
import 'package:movie_guide/Pages/HomePage.dart';
import 'package:movie_guide/Widgets.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterPageState();
  }
}

late Size size;
late BuildContext ctx;

class RegisterPageState extends State<RegisterPage> {
  final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    ctx = context;
    return registerPage();
  }

  Widget registerPage() {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.15),
                  label("Email"),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  usernameField,
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  label("Password"),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  passwordField,
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  label("Confirm Password"),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  confirmPassword,
                  SizedBox(height: size.height*0.05,),
                  longButtons("Register", doRegister),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  var confirmPassword = TextFormField(
      autofocus: false,
      //validator: (value) => value.isEmpty ? "Your password is required" : null,
      //onSaved: (value) => _confirmPassword = value,
      obscureText: true,
      decoration: buildInputDecoration("Confirm password", Icons.lock),
    );

  var passwordField = TextFormField(
    autofocus: false,
    obscureText: true,
    //validator: (value) => value.isEmpty ? "Please enter password" : null,
    //onSaved: (value) => _password = value,
    decoration: buildInputDecoration("Confirm password", Icons.lock),
  );

  var usernameField = TextFormField(
    autofocus: false,
    //validator: validateEmail,
    //onSaved: (value) => _username = value,
    decoration: buildInputDecoration("Confirm password", Icons.email),
  );

  VoidCallback doRegister = () {
    Navigator.pushReplacement(
      ctx,
      MaterialPageRoute(
        builder: (ctx) {
          return HomePage();
        },
      ),
    );
  };
}
