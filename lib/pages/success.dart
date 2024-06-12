import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Flyin'),
             Text('Notification')
           ],
         ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.2,
          ),
          Text('Your video posted successfully')
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Explore'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: '')
        ],
      ),
    );
  }
}
