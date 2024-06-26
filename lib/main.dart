import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_x_flutter/firebase_options.dart';
import 'package:getx_x_flutter/pages/explore_screen.dart';
import 'package:getx_x_flutter/pages/welcome_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: FirebaseAuth.instance.currentUser==null?"/welcome":"/explore",
      initialRoute: "/explore",
      routes: {
        "/welcome" : (context) => const WelcomePage(),
        "/explore" : (context) => Explore()
      },
    );
  }
}


