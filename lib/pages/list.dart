import 'package:flutter/material.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.red
          ),
        ),
        SizedBox(height: 20,),
        Text('video name'),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('User profile pic'),
            Text('Title'),
            Text('Location')
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('User name'),
            Text('views'),
            Text('days ago'),
            Text('Category')
          ],
        ),
      ],
    );
  }
}
