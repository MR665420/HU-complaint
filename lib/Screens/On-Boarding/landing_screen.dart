import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';

class LandingScreen extends StatefulWidget {
  static const String id = 'landing-screen';
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

final _controller = PageController(
  initialPage: 0,
);

int _currentPage = 0;

List<Widget> _pages = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/images/1.png',),
      SizedBox(
        height: 20,
      ),
      Container(
        child: Column(
          children: [
            Text(
              'HAMDARD UNIVERSITY',
              style: TextStyle(fontSize: 25, letterSpacing: 2,fontWeight: FontWeight.bold),
            ),
            Text(
              'COMPLAINT APP',
              style: TextStyle(fontSize: 20, letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register your complaints in most easy ways",
              style: GoogleFonts.poppins(fontSize: 15),
            ),
          ],
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/images/2.png'),
      SizedBox(
        height: 20,
      ),
      Container(
        child: Column(
          children: [
            Text(
              'Active Support',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Tell us What's your problem? We're here!",
              style: GoogleFonts.poppins(fontSize: 15),
            ),
          ],
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      /*SizedBox(
        height: 80,
      ),*/
      Image.asset('assets/images/3.png'),
      SizedBox(
        height: 20,
      ),
      Container(
        child: Column(
          children: [
            Text(
              'Up To Date Notifications',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Notified yourself for new events",
              style: GoogleFonts.poppins(fontSize: 15),
            ),
          ],
        ),
      ),
    ],
  ),
];

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Expanded(
                    child: PageView(
                      controller: _controller,
                      children: _pages,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: _pages.length,
                    position: _currentPage.toDouble(),
                    decorator: DotsDecorator(
                      color: Colors.grey, // Inactive color
                      activeColor: Color(0xFF16F701),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
