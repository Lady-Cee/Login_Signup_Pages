import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_pages/login_page.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height ,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Sign Up!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),)),
            Center(child: Text("Fill your details to create an Account")),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your user name ",
                labelText:"User Name",
                filled: true,
                fillColor: Colors.white,
                // border: OutlineInputBorder(),
                border: OutlineInputBorder( // Define border appearance
                  borderSide: BorderSide.none, // Remove outline border
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: TextStyle(color: Colors.grey),
                hintStyle: TextStyle(color: Colors.lightBlue),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your email ",
                labelText:"Email Address",
                // border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                // border: OutlineInputBorder(),
                border: OutlineInputBorder( // Define border appearance
                  borderSide: BorderSide.none, // Remove outline border
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
                prefixIcon: Icon(Icons.email),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: TextStyle(color: Colors.grey),
                hintStyle: TextStyle(color: Colors.lightBlue),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "Password",
                //   border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                // border: OutlineInputBorder(),
                border: OutlineInputBorder( // Define border appearance
                  borderSide: BorderSide.none, // Remove outline border
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: TextStyle(color: Colors.grey),
                hintStyle: TextStyle(color: Colors.lightBlue),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children:[
                Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context){
                              return LoginPage();
                            })
                        );
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0), // Adjust padding as needed
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade800),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                            // side: BorderSide(color: Colors.black, width: 1), // Adjust border color and width as needed
                          ),
                        ),
                      ),
                      child:  Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize:18)),
                    )
                ),
              ],
            ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have Account?", style: TextStyle(fontSize: 16),),
                SizedBox(width: 5,),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context){
                          return LoginPage();
                        })
                    );
                  },
                  child: Text(
                    "Log in", style: TextStyle(fontSize: 18, color: Colors.black),),),
              ],
            ),


          ],

        ),
      ),
      ),
    );
  }
}
