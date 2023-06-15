import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 40),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black, width: 2.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Let's Get Started !!!",
                style: GoogleFonts.fjallaOne(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Colors.green),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Your Name :",
                style: GoogleFonts.fjallaOne(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 30, 10),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black, width: 2.0)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.next,
                    style: GoogleFonts.fjallaOne(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorStyle: GoogleFonts.fjallaOne(),
                      hintText: 'Name',
                      hintStyle: GoogleFonts.fjallaOne(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Text(
                "Your City :",
                style: GoogleFonts.fjallaOne(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Colors.green),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 30, 10),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black, width: 2.0)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.next,
                    style: GoogleFonts.fjallaOne(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorStyle: GoogleFonts.fjallaOne(),
                      hintText: 'City',
                      hintStyle: GoogleFonts.fjallaOne(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
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
                    padding: EdgeInsets.only(
                        left: 50, right: 50, top: 20, bottom: 20),
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
        ),
      ),
    );
  }
}
