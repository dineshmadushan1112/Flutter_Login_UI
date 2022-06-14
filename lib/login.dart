import 'package:flutter/material.dart';

import 'components/or_divider.dart';
import 'components/social_icon.dart';
import 'signup.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.only(left: 14, top: 10, right: 14),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              _header(context),
              _inputFields(context),
              _loginControls(context),
              _loginInfo(context),
            ]),
          ),
        ));
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Sign In",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _inputFields(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Email Address",
            hintStyle: TextStyle(fontSize: 12),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
            filled: true,
            prefixIcon: Icon(Icons.email_outlined),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(fontSize: 12),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
            filled: true,
            prefixIcon: Icon(Icons.lock),


            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Forgot Password?",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Sign In",
            style: TextStyle(fontSize: 14,),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 10),
              primary: Colors.black87,
              onPrimary: Colors.white
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
  _loginControls(context){
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const OrDivider(),
        const SocalIcon(),

      ],
    );
  }

  _loginInfo(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Not Registered Yet?",style: TextStyle(fontSize: 12),),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),),);},
            child: Text("Create Account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)))
      ],
    );
  }


}
