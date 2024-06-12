import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_x_flutter/controller/home_screen_controller.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key, required this.vid, required this.phoneNumber});

  final String vid;
  final String phoneNumber;

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {

  final OtpVerifyController = Get.find<HomeScreenController>();
  var code = '';
  @override
  Widget build(BuildContext context) {
    final logo = "https://cdn.dribbble.com/users/12177787/screenshots/20283590/media/67b5ce4d9a34852229b9d1da7f474c4a.png";
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(logo),
              const SizedBox(height: 20,),
              TextFormField(
                onChanged: (value) {
                  code=value;
                  print(code);
                },
                keyboardAppearance: Brightness.light,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    label: Text('Enter Otp'), border: OutlineInputBorder()),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              InkWell(onTap: () {}, child: const Text('Did not get otp, resend?')),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              TextButton(onPressed: () {
                print("otp wali"+widget.vid);
                print(widget.phoneNumber);
                OtpVerifyController.verifyOtp(widget.vid, code);

              }, child: const Text('Get started'))
            ],
          ),
        ),
      ),
    );
  }
}
