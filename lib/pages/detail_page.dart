import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).height * 0.05),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Flyin'), Text('Notification')],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.06,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.1,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          label: Text('Search'), border: OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Filter')
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width * 0.65,
                child: const Text('Video Play'),
                decoration: const BoxDecoration(color: Colors.blueGrey),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('title'),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.thumb_up_sharp,
                        )),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.thumb_down_sharp)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share_sharp))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
               width: MediaQuery.sizeOf(context).width*0.7,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("#view"),
                    Text("#days_ago"),
                    Text("#Catgeory"),
                  ],
                ),
              ),

              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('User_name'),
                  Text('View all video')
                ],
              ),
              const Text('Comment'),
              const Text('Reply')
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Explore'
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.add), label: " ")
        ],
      ),
    );
  }
}
