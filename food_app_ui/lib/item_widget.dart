import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String tag;
  final String imgUrl;
  final int ingredients;
  final int favNum;
  final double price;

  ItemWidget(
      {this.title,
      this.subTitle,
      this.tag,
      this.imgUrl,
      this.ingredients,
      this.favNum,
      this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      width: 250.0,
      decoration: BoxDecoration(
        color: Color(0xFFF2F0F0),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            offset: Offset(2, 1),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 200.0,
            width: 250.0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Image(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(subTitle,
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                          fontSize: 12.0,
                        ))),
                    Row(
                      children: [
                        Icon(
                          FeatherIcons.heart,
                          size: 12.0,
                        ),
                        Text(
                          "${favNum.toString()}",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(fontSize: 12.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.purple),
                      ),
                      child: Text(
                        tag,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    ),
                    Text(
                      "Ingredients: ${ingredients.toString()}",
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${price.toStringAsFixed(2)}",
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      "BUY NOW",
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
