import 'package:flutter/material.dart';
import 'package:product_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext $context) async {
    if(!_formKey.currentState!.validate()) return;
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);

    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter User Name",
                          labelText: "User Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email field can't be empty";
                          }
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email field can't be empty";
                          }else if (value.length < 8) {
                            return "Password have to be getter then 8";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Enter User Password",
                            labelText: "Password"),
                      ),
                      SizedBox(height: 20.0),
                      InkWell(
                        onTap: () async {
                          moveToHome(context);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 45.0,
                          width: changeButton ? 50 : 150,
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8)),
                          child: Center(
                              child: changeButton
                                  ? const Icon(Icons.done)
                                  : const Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.white),
                                    )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
