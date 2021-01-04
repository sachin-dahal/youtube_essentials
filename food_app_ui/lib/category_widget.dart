import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color color;

  CategoryWidget({
    this.title,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: icon,
          ),
          SizedBox(height: 5.0),
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Colors.grey[400]),
            ),
          )
        ],
      ),
    );
  }
}
