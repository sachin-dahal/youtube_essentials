import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_ui/category_page.dart';
import 'package:food_app_ui/dummy_data.dart';
import 'package:food_app_ui/item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For you",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 28.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "All",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Icon(
                        FeatherIcons.chevronDown,
                        size: 16.0,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                "Available: 8a-10p",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(height: 25.0),

              // Inserting a list of items here.....

              Container(
                height: 400.0,
                width: double.infinity,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: foodItem.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.0);
                  },
                  itemBuilder: (context, index) {
                    var dataINdex = foodItem[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 5.0),
                      child: ItemWidget(
                        title: dataINdex.title,
                        subTitle: dataINdex.subTitle,
                        favNum: dataINdex.favNum,
                        tag: dataINdex.tag,
                        ingredients: dataINdex.ingredients,
                        price: dataINdex.price,
                        imgUrl: dataINdex.imgUrl,
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 20.0),

              ButtonTheme(
                  buttonColor: Colors.green[400],
                  minWidth: double.infinity,
                  child: RaisedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CategoryPage();
                    })),
                    child: Text(
                      "CATEGORIES",
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: 20.0),
            ],
          ),
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
