import 'package:flutter/material.dart';
import 'package:thanyarak/pages/article_pages.dart';
import 'package:thanyarak/pages/donate_pages.dart';
import 'package:thanyarak/pages/menber_pages.dart';
import 'package:thanyarak/pages/storepages.dart';
import 'package:thanyarak/screen/TabScreen.dart';
import 'package:thanyarak/pages/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsDemoScreen extends StatefulWidget {
  TabsDemoScreen() : super();

  @override
  _TabsDemoScreenState createState() => _TabsDemoScreenState();
}

class _TabsDemoScreenState extends State<TabsDemoScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    OnHome(),
    ArticlePages(),
    StorePages(),
    DonatPages(),
    MenberPages()
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0), // here the desired height
            child: AppBar(
              backgroundColor: Color(0xff43CEF8),
            )),
        body: tabs[currentTabIndex],
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: onTapped,
            currentIndex: currentTabIndex,
            items: [
              BottomNavigationBarItem(
                icon: currentTabIndex == 0
                    ? new Image.asset('assets/images/Btn_home_active.png')
                    : new Image.asset('assets/images/Btn_home.png'),
                title: Text(
                  'หน้าหลัก',
                  style: GoogleFonts.kanit(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: currentTabIndex == 0
                          ? Colors.blue[400]
                          : Colors.grey[400]
                      // fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              BottomNavigationBarItem(
                icon: currentTabIndex == 1
                    ? new Image.asset('assets/images/Btn_article_active.png')
                    : new Image.asset('assets/images/Btn_article.png'),
                title: Text(
                  'บทความ',
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: currentTabIndex == 1
                        ? Colors.blue[400]
                        : Colors.grey[400],
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: currentTabIndex == 2
                    ? new Image.asset('assets/images/Btn_store_active.png')
                    : new Image.asset('assets/images/Btn_store.png'),
                title: Text(
                  'ร้านค้า',
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: currentTabIndex == 2
                        ? Colors.blue[400]
                        : Colors.grey[400],
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: currentTabIndex == 3
                    ? new Image.asset('assets/images/Btn_donate_active.png')
                    : new Image.asset('assets/images/Btn_donate.png'),
                title: Text(
                  'บริจาค',
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: currentTabIndex == 3
                        ? Colors.blue[400]
                        : Colors.grey[400],
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: currentTabIndex == 4
                    ? new Image.asset('assets/images/Btn_member_active.png')
                    : new Image.asset('assets/images/Btn_member.png'),
                title: Text(
                  'สมาชิก',
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: currentTabIndex == 4
                        ? Colors.blue[400]
                        : Colors.grey[400],
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
