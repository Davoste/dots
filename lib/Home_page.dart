import 'package:crud_app/pages/page1.dart';
import 'package:crud_app/pages/page2.dart';
import 'package:crud_app/pages/page3.dart';
import 'package:crud_app/pages/page4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          //dott indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.deepPurple.shade100,
                dotHeight: 30,
                dotWidth: 30,
                spacing: 16,
                verticalOffset: 10),
          )
        ],
      ),
    );
  }
}
