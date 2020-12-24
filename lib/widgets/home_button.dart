import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const HomeButton({
    Key key,
    @required this.deviceSize,
    this.text,
    this.onTap,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: deviceSize.width / 2,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(60),
          boxShadow: [
            BoxShadow(
                blurRadius: 40,
                color: Colors.blue.withOpacity(0.5),
                offset: Offset(0, 20)),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          '$text',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 5,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
