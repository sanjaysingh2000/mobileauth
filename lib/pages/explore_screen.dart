import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';
import 'package:get/get.dart';
import 'package:getx_x_flutter/controller/explore_controller.dart';
import 'package:getx_x_flutter/controller/home_screen_controller.dart';

import 'list.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final ExploreController _exploreController = Get.put(ExploreController());
  final HomeScreenController _homeScreenController =
      Get.put(HomeScreenController());

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
                height: MediaQuery.sizeOf(context).height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.1,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Text(
                            'Search',
                            textAlign: TextAlign.center,
                          ),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Filter'),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/DetailPage");
                  },
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return list();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Explore', icon: Container()),
          BottomNavigationBarItem(
              label: '', icon: InkWell(onTap: () {}, child: Icon(Icons.add))),
          BottomNavigationBarItem(icon: Container(), label: 'library')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _homeScreenController.signOut();
        },
        child: Text('Logout'),
      ),
    );
  }
}
