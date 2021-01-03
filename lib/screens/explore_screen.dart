import 'package:explore_nature_ui/screens/book_now_screen.dart';
import 'package:explore_nature_ui/widgets/explore_card_list.dart';
import 'package:explore_nature_ui/widgets/explore_list_card_list.dart';
import 'package:explore_nature_ui/widgets/home_menu_list.dart';
import 'package:explore_nature_ui/widgets/home_searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
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
                  SizedBox(height: 20),
                  ExploreCardList(deviceSize: deviceSize),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'You might like',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      ExploreListCardList(
                        imageUrl: 'assets/images/1.jpg',
                        subTitle: 'Wyoring, USA - \$200',
                        title: 'Near The Lake',
                      ),
                      ExploreListCardList(
                        imageUrl: 'assets/images/2.jpg',
                        subTitle: 'Tokyo, Japan - \$895',
                        title: 'Exploring Japan',
                      ),
                      ExploreListCardList(
                        imageUrl: 'assets/images/3.jpg',
                        subTitle: 'Wyoring, USA - \$200',
                        title: 'Near The Lake',
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        color: Color(0xFFEEFFEE),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 5),
            Icon(
              Icons.home,
              size: 30,
              color: Colors.blue,
            ),
            SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BookNowScreed(),
                  ),
                );
              },
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.note,
              size: 30,
              color: Colors.grey,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.verified_user_outlined,
              size: 30,
              color: Colors.grey,
            ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
