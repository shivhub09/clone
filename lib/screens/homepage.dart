import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  CarouselController buttonCarouselController = CarouselController();
  List<String> images = [
    "assets/images_app/alps.jpg",
    "assets/images_app/paris2.jpg",
    "assets/images_app/china.jpg",
    "assets/images_app/taj.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    int activeIndex = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                top: screenHeight * 0.05),
            child: CarouselSlider(
              options: CarouselOptions(
                height: screenHeight * 0.65,
                autoPlay: true,
                viewportFraction: 1.1,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
                padEnds: true,
              ),
              items: images.map((imageURL) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          imageURL,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                top: screenHeight * 0.04,
                bottom: screenHeight * 0.04),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Travel ",
                      style: GoogleFonts.fjallaOne(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),
                    ),
                    Text(
                      "Anywhere,",
                      style: GoogleFonts.fjallaOne(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Travel ",
                      style: GoogleFonts.fjallaOne(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    ),
                    Text(
                      "Everywhere.",
                      style: GoogleFonts.fjallaOne(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 6,
                    blurRadius: 6,
                    offset: Offset(3, 3),
                  ),
                ],
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.fjallaOne(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
