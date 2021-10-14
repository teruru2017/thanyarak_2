import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    int _volume = 0;
    int counter = 0;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
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
                    height: 100,
                    child: DrawerHeader(
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment:
                                Alignment.centerLeft + Alignment(0.1, -0.6),
                            child: Text(
                              'Test login',
                              style: GoogleFonts.kanit(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
