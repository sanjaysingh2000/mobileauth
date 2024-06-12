import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_x_flutter/pages/explore_screen.dart';
import 'package:getx_x_flutter/pages/otp_verify.dart';
import 'package:getx_x_flutter/pages/welcome_page.dart';

class HomeScreenController extends GetxController {

  bool isLoadingNext = false;

  final TextEditingController mobileNumberController = TextEditingController();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future sendOtp() async {
    RxBool isLoadingNext = false.obs;
    try {
      print(mobileNumberController.text);
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: '+91${mobileNumberController.text}',
        verificationCompleted: (phoneAuthCredential) {},
        verificationFailed: (error) {
          Get.snackbar("Error Occured", error.code);
        },
        codeSent: (verificationId, forceResendingToken) {
          Get.to(OtpVerify(
            vid: verificationId, phoneNumber: mobileNumberController.text,));
          print('code sent');
        },
        codeAutoRetrievalTimeout: (verificationId) {},);
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error Occured', e.code);
    } catch (e) {
      Get.snackbar('Error occured', e.toString());
    }
  }

  verifyOtp(String vid, String code) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: vid, smsCode: code);
    try {
      await FirebaseAuth.instance.signInWithCredential(credential).then((
          value) => Get.offAll(()=>const Explore()));
    }on FirebaseAuthException catch(e){
      Get.snackbar('Error occured', e.toString());
      print(e.toString());
    }

    catch(e){
      Get.snackbar('Error Occured', e.toString());
      print(e.toString());
    }
  }

  signOut() async{

    await FirebaseAuth.instance.signOut();
    Get.snackbar('Signing out', 'Signed out Please login again');
    Get.to(WelcomePage());

  }


}