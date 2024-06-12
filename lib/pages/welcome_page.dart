import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_x_flutter/controller/home_screen_controller.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  final HomeScreenController _homeScreenController = Get.put(HomeScreenController());
  
  final logo = "https://cdn.dribbble.com/users/12177787/screenshots/20283590/media/67b5ce4d9a34852229b9d1da7f474c4a.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.network(logo),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _homeScreenController.mobileNumberController,
                decoration: const InputDecoration(
                    label: Text('Enter Mobile number'),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
              ElevatedButton(onPressed: (){
                _homeScreenController.sendOtp();
              }, child:  const Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
