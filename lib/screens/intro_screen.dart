import 'package:explore_nature_ui/screens/explore_screen.dart';
import 'package:explore_nature_ui/widgets/home_button.dart';
import 'package:explore_nature_ui/widgets/home_chip.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 180,
            width: deviceSize.width,
            color: Colors.green[100].withOpacity(0.3),
          ),
          Align(
            alignment: Alignment(0, -0.62),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey[400],
                    offset: Offset(0, 20),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: Text(
                '👋',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: deviceSize.width,
              height: deviceSize.height - 230,
              child: Column(
                children: [
                  Text(
                    'Hey there !',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'Please let us know what type of activities you like the most, so we can prepare some awesome destinations for you!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //🏔️ 🌄 ☀️ 🎄 🍛 🏊 🏄 🏦
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      HomeChip(lable: "🏔️  Trekking"),
                      HomeChip(lable: "🌄  Shooting"),
                      HomeChip(lable: "☀️  Sunbathing"),
                      HomeChip(lable: "🎄  Wandering"),
                      HomeChip(lable: "🍛  Eating"),
                      HomeChip(lable: "🏊  Swimming"),
                      HomeChip(lable: "🏄  Surfing"),
                      HomeChip(lable: "🏦  Sightseeing"),
                    ],
                  ),
                  SizedBox(height: 70),
                  HomeButton(
                    deviceSize: deviceSize,
                    text: "CONTINUE",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ExploreScreen()));
                    },
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Skip for now',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
