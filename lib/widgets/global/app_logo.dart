import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appLogo() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 80,
      color: Color(0xff182545),
      child: Center(
          child: Text("Melodify",
              style:
                  GoogleFonts.montserrat(fontSize: 30, color: Colors.white))),
    );
  }