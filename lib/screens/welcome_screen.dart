
import 'package:chat_flutter_firbase/screens/registration_screen.dart';
import 'package:chat_flutter_firbase/screens/signin_screen.dart';
import 'package:chat_flutter_firbase/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRout = 'welcome_screen';

  const WelcomeScreen({Key? key}) :super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/images.png') ,
                ),
                const Text('MessageMe',
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight:FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, SigninScreen.screenRout);
              },
            ),

            MyButton(
              color: Colors.blue[800]!,
              title: 'Register',
              onPressed: () {
                 Navigator.pushNamed(context, RegistrationScreen.screenRout);
              },
            ), 

            
          ],
        ),
      ),
    );
  }
}

