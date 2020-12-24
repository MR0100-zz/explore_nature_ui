import 'package:explore_nature_ui/widgets/home_menu_list.dart';
import 'package:explore_nature_ui/widgets/home_searchbar.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 90),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Explore',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
            ),
            child: Text(
              'Here you can explore our most popular and recommanded locations.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[500],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20),
          HomeSearchBar(deviceSize: deviceSize),
          SizedBox(height: 20),
          HomeMenuList(deviceSize: deviceSize),
        ],
      ),
    );
  }
}
