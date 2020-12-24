import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: deviceSize.width,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: Colors.grey[200],
              offset: Offset(0, 20),
            )
          ]),
      padding: EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      child: Row(
        children: [
          Text(
            'Search..',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(50),
            ),
            alignment: Alignment.center,
            child: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
