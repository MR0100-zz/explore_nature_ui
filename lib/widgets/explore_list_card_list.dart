import 'package:flutter/material.dart';

class ExploreListCardList extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;
  const ExploreListCardList({Key key, this.title, this.subTitle, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(width: 25),
          Container(
            height: 70,
            width: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage('$imageUrl'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 10),
              Text(
                '$title',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
              Text(
                '$subTitle',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
            ],
          )
        ],
      ),
    );
  }
}
