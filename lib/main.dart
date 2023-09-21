import 'package:chat_flutter_firbase/screens/chat_screen.dart';
import 'package:chat_flutter_firbase/screens/registration_screen.dart';
import 'package:chat_flutter_firbase/screens/signin_screen.dart';
import 'package:chat_flutter_firbase/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            title: 'MessageMe app',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
           // home: WelcomeScreen(),
              //home: ChatScreen(),
              initialRoute: WelcomeScreen.screenRout,
              routes: {
                WelcomeScreen.screenRout: (context) => WelcomeScreen(),
                SigninScreen.screenRout: (context) => SigninScreen(),
                RegistrationScreen.screenRout: (context) => RegistrationScreen(),
                ChatScreen.screenRout: (context) => ChatScreen(),


              },

    );
  }
}
