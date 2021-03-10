import 'package:flutter/material.dart';
import './loading.dart';
import '../widgets/screen_widgets/login_page_widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  handleLogin() async {
    String email = emailController.text.trim();
    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: _isLoading
          ? loader()
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: Container(
                          width: 200,
                          height: 150,
                          child: Image.asset('assets/login_page.png')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: loginTexField(
                      controller: emailController,
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com',
                      obscureText: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: loginTexField(
                      labelText: 'Password',
                      hintText: 'Enter secure password',
                      controller: passwordController,
                      obscureText: true,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  loginButton(
                    onPressed: handleLogin,
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  Text('New User? Create Account')
                ],
              ),
            ),
    );
  }
}
