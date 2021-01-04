import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_ui/category_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int _selectedIndex = 0;

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.seedling), label: ""),
    BottomNavigationBarItem(icon: Icon(FeatherIcons.tag), label: ""),
    BottomNavigationBarItem(icon: Icon(FeatherIcons.shoppingBag), label: ""),
    BottomNavigationBarItem(icon: Icon(FeatherIcons.user), label: ""),
    BottomNavigationBarItem(icon: Icon(FeatherIcons.bell), label: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfefeff),
      body: Container(
        padding: EdgeInsets.only(
          top: 30.0,
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey[500]),
                suffixIcon: Icon(
                  FeatherIcons.search,
                  size: 18.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey[400],
                  ),
                ),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              "What you like?",
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 28.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            // list of categories...
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                CategoryWidget(
                  title: "INDIAN",
                  color: Colors.grey[400],
                  icon: Icon(
                    FontAwesomeIcons.utensils,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "JAPANESE",
                  color: Colors.grey[400],
                  icon: Icon(
                    FontAwesomeIcons.bullseye,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "CHINESE",
                  color: Colors.grey[400],
                  icon: Icon(
                    FontAwesomeIcons.cookie,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "FISH",
                  color: Colors.grey[400],
                  icon: Icon(
                    FontAwesomeIcons.fish,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "PROTEIN",
                  color: Colors.blue[400],
                  icon: Icon(
                    FontAwesomeIcons.egg,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "SNACKS",
                  color: Colors.grey[400],
                  icon: Icon(
                    FontAwesomeIcons.hamburger,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "ORGANIC",
                  color: Colors.grey[400],
                  icon: Icon(
                    FontAwesomeIcons.appleAlt,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "VEGETERIAN",
                  color: Colors.green[400],
                  icon: Icon(
                    FontAwesomeIcons.carrot,
                    size: 30.0,
                  ),
                ),
                CategoryWidget(
                  title: "MEDICINE",
                  color: Colors.grey[400],
                  icon: Icon(
                    FontAwesomeIcons.capsules,
                    size: 30.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 18.0),
        unselectedIconTheme: IconThemeData(size: 15.0),
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
