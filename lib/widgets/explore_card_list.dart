import 'package:flutter/material.dart';

class ExploreCardList extends StatelessWidget {
  const ExploreCardList({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width,
      height: 250,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ExploreCard(
              deviceSize: deviceSize,
              image: "1",
              title: "Mountain Chilout",
              subTitle: "Bali, Indonesia - \$499",
            ),
            ExploreCard(
              deviceSize: deviceSize,
              image: "2",
              title: "Chilout at the Belzium",
              subTitle: "Hawai, USA - \$576",
            ),
            ExploreCard(
              deviceSize: deviceSize,
              image: "3",
              title: "Mountain Chilout",
              subTitle: "Bali, Indonesia - \$499",
            ),
          ],
        ),
      ),
    );
  }
}

class ExploreCard extends StatelessWidget {
  final String title;
  final String image;
  final String subTitle;
  const ExploreCard({
    Key key,
    @required this.deviceSize,
    this.title,
    this.image,
    this.subTitle,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: deviceSize.width / 1.7,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  color: Colors.grey[300],
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage('assets/images/$image.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            '$title',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '$subTitle',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
