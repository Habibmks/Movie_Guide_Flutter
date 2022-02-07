import 'package:flutter/material.dart';
import 'package:movie_guide/Pages/HomePage.dart';

import '../Widgets.dart';
import 'RegisterPage.dart';

late Size size;
late BuildContext ctx;

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();
  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    ctx = context;
    // TODO: implement build
    return loginPageDemo();
  }

  Widget loginPageDemo() => SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(40.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.15,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Movie Guide",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.15,
                    ),
                    label("Email"),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    usernameField,
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    label("Password"),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    passwordField,
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    longButtons("Login", doLogin),
                    longButtons("Register", goRegister)
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  // ignore: prefer_function_declarations_over_variables
  VoidCallback doLogin = () {
    Navigator.pushReplacement(
      ctx,
      MaterialPageRoute(
        builder: (ctx) {
          return HomePage();
        },
      ),
    );
  };
  VoidCallback goRegister = () {
    Navigator.pushReplacement(
      ctx,
      MaterialPageRoute(
        builder: (ctx) {
          return RegisterPage();
        },
      ),
    );
  };

  final usernameField = TextFormField(
    autofocus: false,
    //validator: validateEmail,
    //onSaved: (value) => _username = value,
    decoration: buildInputDecoration("Confirm password", Icons.email),
  );

  final passwordField = TextFormField(
    autofocus: false,
    obscureText: true,
    //validator: (value) => value.isEmpty ? "Please enter password" : null,
    //onSaved: (value) => _password = value,
    decoration: buildInputDecoration("Confirm password", Icons.lock),
  );

  Widget loginPageScaffold() {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: Colors.lightGreen[200],
            padding: constraints.maxWidth < 500
                ? EdgeInsets.zero
                : const EdgeInsets.all(30.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 25.0),
                constraints: BoxConstraints(
                  maxWidth: 500,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Welcome to the app, please log in"),
                      TextField(
                          decoration: InputDecoration(labelText: "username")),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: "password")),
                      RaisedButton(
                          color: Colors.blue,
                          child: Text("Log in",
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {}),
                      RaisedButton(
                          color: Colors.blue,
                          child: Text("Register",
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {})
                    ]),
              ),
            ));
      }),
    );
  }
}
