import 'dart:ui';

import 'package:flutter/material.dart';

class BookNowScreed extends StatelessWidget {
  const BookNowScreed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: Image(
                image: AssetImage('assets/images/1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 30,
              top: 80,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mountain Chillout',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  'Bali, Indonesia - \$499',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: Color(0XFFEEFFEE),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 25,
                            top: 20,
                          ),
                          child: Text(
                            'Trip plan',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 25),
                                BookListBox(
                                  time: 'Day 1- 6:00 AM',
                                  name: 'Department',
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.grey[400],
                                ),
                                BookListBox(
                                  time: 'Day 1- 1:00 PM',
                                  name: 'Arrival at Bali',
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.grey[400],
                                ),
                                BookListBox(
                                  time: 'Day 1- 6:00 AM',
                                  name: 'Department',
                                ),
                                SizedBox(width: 25),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 25,
                            top: 20,
                          ),
                          child: Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 25,
                            top: 20,
                          ),
                          child: Text(
                            'Explore stunning forest and mountains in Bali The hear of indinesia is a fantastic place for relaxing and Explore stunning forest and mountains in Bali The hear of indinesia is a fantastic place for relaxing and Explore stunning forest and mountains in Bali The hear of indinesia is a fantastic place for relaxing Explore stunning forest and mountains in Bali The hear of indinesia is a fantastic place for relaxing and Explore stunning forest and mountains in Bali The hear of indinesia is a fantastic place for relaxing and Explore stunning forest and mountains in Bali The hear of indinesia is a fantastic place for relaxing.',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.94),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: 180,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(7),
                      child: Icon(
                        Icons.calculate,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Book Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        blurRadius: 20,
                        offset: Offset(0, 10)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookListBox extends StatelessWidget {
  final String name;
  final String time;
  const BookListBox({
    Key key,
    this.name,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      height: 60,
      child: Column(
        children: [
          Text(
            '$time',
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Text(
            '$name',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
