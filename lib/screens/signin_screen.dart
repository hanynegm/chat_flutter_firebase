import 'package:chat_flutter_firbase/screens/registration_screen.dart';
import 'package:chat_flutter_firbase/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SigninScreen extends StatefulWidget {
  static const String screenRout = 'signin_screen';

  const SigninScreen({Key? key}) :super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/images.png') ,//width: 150),
            ),
            const SizedBox(height: 50),

           TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {},
                decoration: const InputDecoration(
                hintText: 'Enter your Email',
                contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),

                ),
                enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),

                ),
                focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),

                  ), 
                ),
            ),

    SizedBox(height: 10),

    TextField(
          textAlign: TextAlign.center,
          obscureText: true,
          onChanged: (value) {},
          decoration: const InputDecoration(
          hintText: 'Enter your Password',
          contentPadding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
          enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange,width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
          focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue,width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),

          ), 
          ),
        ),

    SizedBox(height: 20),

       MyButton(
              color: Colors.blue[800]!,
              title: 'Log In',
              onPressed: () {
                
              },
            ), 

            SizedBox(height: 10),

            Row(
              children: [
                Text("Don't have an account"),
                SizedBox(width: 10),
                TextButton(
                  onPressed: (){
                     Navigator.pushNamed(context, RegistrationScreen.screenRout);
                  }, 
                  child: Text("Sign up")
                  ),
              ],
              
            ),


   
          ],
        ),
      ),
    );
  }
}

