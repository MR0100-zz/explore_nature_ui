import 'package:flutter/material.dart';

class HomeMenuList extends StatelessWidget {
  const HomeMenuList({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: deviceSize.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Popular',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 40),
              Text(
                'Newest',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 40),
              Text(
                'For you',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 40),
              Text(
                'Recommanded',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ));
  }
}
