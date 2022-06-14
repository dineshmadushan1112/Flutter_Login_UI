import 'package:flutter/material.dart';

import 'components/or_divider.dart';
import 'components/social_icon.dart';
import 'login.dart';

class SignUpScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

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
          "Create Account",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _inputFields(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4,top: 10,bottom: 4,right: 4),
          child: TextField(
            decoration: InputDecoration(
              hintText: "First Name",
              hintStyle: TextStyle(fontSize: 12),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
              filled: true,
              prefixIcon: Icon(Icons.person_outline),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Last Name",
              hintStyle: TextStyle(fontSize: 12),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
              filled: true,
              prefixIcon: Icon(Icons.person_outline),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(fontSize: 12),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
              filled: true,
              prefixIcon: Icon(Icons.person_pin),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Phone Number",
              hintStyle: TextStyle(fontSize: 12),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
              filled: true,
              prefixIcon: Icon(Icons.phone_iphone_sharp),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Email Address",
              hintStyle: TextStyle(fontSize: 12),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
              filled: true,
              prefixIcon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(fontSize: 12,),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.05),
              filled: true,
              prefixIcon: Icon(Icons.lock),


              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
            obscureText: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Create Account",
            style: TextStyle(fontSize: 14),
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
        Text("Already registered?",style: TextStyle(fontSize: 12),),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),),);
        }, child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),

        )
      ],
    );
  }


}
