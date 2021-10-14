import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:thanyarak/pages/signin_page.dart';
import 'package:thanyarak/widget/news_list.dart';

class OnHome extends StatefulWidget {
  homePage createState() => homePage();
}

class homePage extends State<OnHome> {
  // final ImageProvider header;
  // final ImageProvider topgraphic;

  // homePage({
  //   Key? key,
  //   this.header = const AssetImage('assets/images/header.png'),
  //   this.topgraphic = const AssetImage('assets/images/topgraphic.png'),
  // }) : super(key: key);

  final List<String> imagesList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  final List<String> titles = [
    ' Coffee ',
    ' Bread ',
    ' Gelato ',
    ' Ice Cream ',
    ' Gelato ',
    ' Ice Cream ',
  ];

  int _currentIndex = 0;
  int _volume = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          // <-- wrap this around
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/body_top.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter)),
                child: Column(
                  children: [
                    Container(
                        height: 140.0,
                        child: DrawerHeader(
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft +
                                      Alignment(0.05, -0.1),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xffffffff),
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundImage: NetworkImage(
                                          'http://www.bbk.ac.uk/mce/wp-content/uploads/2015/03/8327142885_9b447935ff.jpg'),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft +
                                      Alignment(0.6, -0.4),
                                  child: Text(
                                    'สวัสดีค่ะ',
                                    style: GoogleFonts.kanit(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffffffff),
                                      // fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft +
                                        Alignment(0.63, 0.1),
                                    child: Text(
                                      'กรุณาเข้าสู่ระบบ',
                                      style: GoogleFonts.kanit(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white70,
                                        // fontStyle: FontStyle.italic,
                                      ),
                                    )),
                                Align(
                                  alignment: Alignment.centerRight +
                                      Alignment(-0.22, -0.3),
                                  child: Container(
                                    child: Stack(
                                      children: <Widget>[
                                        IconButton(
                                          iconSize: 20,
                                          icon: Column(
                                            children: [
                                              SizedBox(
                                                width: 16.0,
                                                height: 20.0,
                                                child: Stack(
                                                  children: <Widget>[
                                                    SizedBox(
                                                      width: 16.0,
                                                      height: 16.0,
                                                      child: SvgPicture.string(
                                                        _svg_hjh74,
                                                        allowDrawingOutsideViewBox:
                                                            true,
                                                      ),
                                                    ),
                                                    Transform.translate(
                                                      offset: Offset(5.5, 17.9),
                                                      child: Container(
                                                        width: 5.4,
                                                        height: 2.1,
                                                        color: const Color(
                                                            0xffffffff),
                                                      ),
                                                    ),
                                                    counter != 0
                                                        ? Pinned.fromPins(
                                                            Pin(
                                                                size: 15.0,
                                                                end: -7.5),
                                                            Pin(
                                                                size: 15.0,
                                                                start: -7.5),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius: BorderRadius.all(
                                                                    Radius.elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                                color:
                                                                    Colors.red,
                                                                border: Border.all(
                                                                    width: 1.0,
                                                                    color: const Color(
                                                                        0xff31bceb)),
                                                              ),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(0.5),
                                                              child: Center(
                                                                child: Text(
                                                                  '$counter',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        7.5,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        : new Container()
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              counter++;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                content: Text('Noti'),
                                              ));
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight +
                                      Alignment(0, -0.3),
                                  child: Container(
                                    child: SvgPicture.string(
                                      _svg_edj7p,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(0.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0))),
                    CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.92,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        enableInfiniteScroll: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: imagesList
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.all(0),
                              child: Card(
                                // elevation: 6.0,
                                // shadowColor: Color(0xfff291a3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),

                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(
                                        item,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                      Center(
                                        child: Text(
                                          '${titles[_currentIndex]}',
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: Colors.black45,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesList.map((urlOfItem) {
                        int index = imagesList.indexOf(urlOfItem);
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Color.fromRGBO(242, 145, 163, 1)
                                : Color.fromRGBO(0, 136, 192, 1),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20),
                padding:
                    EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/main_body.png"),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomCenter)),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/calendar.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          'การนัดหมาย',
                          style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0088C6),
                            // fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    // height: 300,
                    child: Card(
                        elevation: 2,
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Ink(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              const Color(0xFF43CEF8),
                                              const Color(0xFF0088C6),
                                            ],
                                            stops: [
                                              0.0,
                                              0.7
                                            ]),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: ImageIcon(
                                        AssetImage(
                                            'assets/images/appointment/box_calenda.png'),
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'ยังไม่มีการนัดหมาย',
                                                style: GoogleFonts.kanit(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline4,

                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff000000),
                                                  // fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                              Text(
                                                'เข้าสู่ระบบ เพื่อทำการนัดหมาย',
                                                style: GoogleFonts.kanit(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline4,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffB7B7B7),
                                                  // fontStyle: FontStyle.italic,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        SignInPage()));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff0088C6),
                                                  Color(0xff43CEF8),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  offset: Offset(5, 5),
                                                  blurRadius: 10,
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(14),
                                              child: Center(
                                                  child: Text(
                                                'เข้าสู่ระบบ',
                                                style: GoogleFonts.kanit(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline4,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xffffffff),
                                                  // fontStyle: FontStyle.italic,
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                        // TextButton(
                                        //   onPressed: () {},
                                        //   child: Text('test'),
                                        //   style: ButtonStyle(
                                        //       backgroundColor:
                                        //           MaterialStateProperty.all<Color>(
                                        //               Colors.red),
                                        //       shape: MaterialStateProperty.all<
                                        //               RoundedRectangleBorder>(
                                        //           RoundedRectangleBorder(
                                        //               borderRadius:
                                        //                   BorderRadius.circular(
                                        //                       10.0),
                                        //               side: BorderSide(
                                        //                   color: Colors.red)))),
                                        // )
                                      ],
                                    ))
                              ],
                            )),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            IconButton(
                              iconSize: 40,
                              icon: Image.asset(
                                  'assets/images/appointment/list.png'),
                              tooltip: 'Increase volume by 10',
                              onPressed: () {
                                setState(() {
                                  // _volume += 10;
                                });
                              },
                            ),
                            Text(
                              'ขอผลตรวจ',
                              style: GoogleFonts.kanit(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                // fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            IconButton(
                              iconSize: 40,
                              icon: Image.asset(
                                  'assets/images/appointment/calenda.png'),
                              tooltip: 'Increase volume by 10',
                              onPressed: () {},
                            ),
                            Text(
                              'เพิ่มการนัดหมาย',
                              style: GoogleFonts.kanit(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                // fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            IconButton(
                              iconSize: 40,
                              icon: Image.asset(
                                  'assets/images/appointment/noti.png'),
                              tooltip: 'Increase volume by 10',
                              onPressed: () {},
                            ),
                            Text(
                              'การแจ้งเตือน',
                              style: GoogleFonts.kanit(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                // fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('assets/images/article.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                'บทความ',
                                style: GoogleFonts.kanit(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff0088C6),
                                  // fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Center(
                                child: Text(
                                  'ดูทั้งหมด',
                                  style: GoogleFonts.kanit(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffB7B7B7),
                                    // fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NewsList(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.asset('assets/images/sh.svg'),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            'โปรโมชั่นร้านค้า',
                            style: GoogleFonts.kanit(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0088C6),
                              // fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.message,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'มูลนิธิถันยรักษ์',
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

const String _svg_ftk =
    '<svg viewBox="1.0 -0.3 414.0 729.6" ><path transform="translate(15037.0, 18560.93)" d="M -15036 -17863.599609375 C -15036 -17863.599609375 -14842.5009765625 -17791.82421875 -14621.984375 -17863.375 C -14621.984375 -18046.607421875 -14622.123046875 -18561.22265625 -14622.123046875 -18561.22265625 L -15035.771484375 -18561.22265625 L -15036 -17863.599609375 Z" fill="#f8f8fa" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hjh74 =
    '<svg viewBox="1894.1 51.0 16.3 16.0" ><path transform="translate(0.0, 0.0)" d="M 1902.271728515625 51 L 1902.271728515625 51 C 1897.75732421875 51 1894.097900390625 54.65941619873047 1894.097900390625 59.17377471923828 L 1894.097900390625 65.47245025634766 C 1894.097900390625 66.31590270996094 1894.781616210938 66.99972534179688 1895.625122070312 66.99972534179688 L 1908.918212890625 66.99972534179688 C 1909.761596679688 66.99972534179688 1910.445556640625 66.31590270996094 1910.445556640625 65.47245025634766 L 1910.445556640625 59.17377471923828 C 1910.445556640625 54.65941619873047 1906.786010742188 51 1902.271728515625 51 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_sr4c7 =
    '<svg viewBox="42.0 68.0 23.4 24.0" ><path transform="translate(-1520.84, -1708.0)" d="M 1586.143310546875 1798.458251953125 C 1585.235107421875 1796.269287109375 1582.795654296875 1794.46826171875 1579.580810546875 1793.532958984375 C 1582.40673828125 1791.756591796875 1584.23193359375 1788.53369140625 1584.011474609375 1784.901611328125 C 1583.724609375 1780.168701171875 1579.875732421875 1776.3134765625 1575.143310546875 1776.019287109375 C 1569.6259765625 1775.676513671875 1565.04443359375 1780.04931640625 1565.04443359375 1785.4931640625 C 1565.04443359375 1788.881591796875 1566.82177734375 1791.853515625 1569.4931640625 1793.532958984375 C 1566.278076171875 1794.46826171875 1563.838623046875 1796.269287109375 1562.930419921875 1798.458251953125 C 1562.666015625 1799.096923828125 1562.9775390625 1799.809814453125 1563.650146484375 1799.969970703125 C 1564.18994140625 1800.098388671875 1564.705322265625 1799.80908203125 1564.903564453125 1799.323974609375 C 1565.68408203125 1797.41357421875 1568.540283203125 1795.576171875 1572.526611328125 1795.103271484375 C 1573.158447265625 1795.028076171875 1573.6416015625 1794.505859375 1573.6416015625 1793.86962890625 L 1573.6416015625 1793.79833984375 C 1573.6416015625 1793.23486328125 1573.26171875 1792.7412109375 1572.7158203125 1792.6015625 C 1569.473876953125 1791.771240234375 1567.087890625 1788.78173828125 1567.197509765625 1785.260009765625 C 1567.314453125 1781.493896484375 1570.364990234375 1778.3662109375 1574.12744140625 1778.160888671875 C 1578.361572265625 1777.929443359375 1581.880126953125 1781.30810546875 1581.880126953125 1785.4931640625 C 1581.880126953125 1788.774169921875 1579.714599609375 1791.55419921875 1576.738525390625 1792.490966796875 C 1576.17041015625 1792.669921875 1575.790771484375 1793.20458984375 1575.790771484375 1793.79931640625 L 1575.790771484375 1793.79931640625 C 1575.790771484375 1794.48046875 1576.286865234375 1795.06494140625 1576.960693359375 1795.162841796875 C 1580.7294921875 1795.70947265625 1583.41748046875 1797.480712890625 1584.170166015625 1799.323974609375 C 1584.368896484375 1799.80908203125 1584.88427734375 1800.098388671875 1585.424072265625 1799.969970703125 C 1586.0966796875 1799.809814453125 1586.408203125 1799.096923828125 1586.143310546875 1798.458251953125 Z" fill="#f3f8fe" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_edj7p =
    '<svg viewBox="181.0 496.0 20.0 11.0" ><path  d="M 199.4313659667969 499.1372680664062 L 182.5686340332031 499.1372680664062 C 181.7023620605469 499.1372680664062 181 498.4349365234375 181 497.5686340332031 C 181 496.7023620605469 181.7023620605469 496 182.5686340332031 496 L 199.4313659667969 496 C 200.2976379394531 496 201 496.7023620605469 201 497.5686340332031 C 201 498.4349365234375 200.2976379394531 499.1372680664062 199.4313659667969 499.1372680664062 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(0.0, -12.16)" d="M 199.4313659667969 519.1372680664062 L 182.5686340332031 519.1372680664062 C 181.7023620605469 519.1372680664062 181 518.4349365234375 181 517.568603515625 C 181 516.702392578125 181.7023620605469 516 182.5686340332031 516 L 199.4313659667969 516 C 200.2976379394531 516 201 516.702392578125 201 517.568603515625 C 201 518.4349365234375 200.2976379394531 519.1372680664062 199.4313659667969 519.1372680664062 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
