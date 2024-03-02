import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20.0,),
        Text("welcome",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter User Name",
              labelText: "User Name"
            ),
          ),
          TextFormField(
          obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter User Password",
              labelText: "Password"
            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(onPressed: (){}, child: Text("Login"),
            style: ButtonStyle(),
          )
          ],),
        )

      ],)
    );
  }
}