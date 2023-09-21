import 'package:chat_flutter_firbase/screens/chat_screen.dart';
import 'package:chat_flutter_firbase/screens/signin_screen.dart';
import 'package:chat_flutter_firbase/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static const String screenRout = 'registration_screen';

  const RegistrationScreen({Key? key}) :super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;

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
              child: Image.asset('assets/images/images.png'),//width: 200,),
            ),
            const SizedBox(height: 50),

           TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {
            email = value;
            },
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
            onChanged: (value) {
            password = value;
            },
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
              title: 'Register',
              onPressed: () async{
                //print(email);
                //print(password);
              
                    try{
                        final newuser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                        Navigator.pushNamed(context, ChatScreen.screenRout);
                    } catch (e){
                        print(e);
                    }
              },
            ),


           SizedBox(height: 10),

            Row(
              children: [
                Text(" Have an account"),
                SizedBox(width: 10),
                TextButton(
                  onPressed: (){
                     Navigator.pushNamed(context, SigninScreen.screenRout);
                  }, 
                  child: Text("Sign In")
                  ),
              ],
              
            ),


          ],
        ),
      ),
    );
  }
}

