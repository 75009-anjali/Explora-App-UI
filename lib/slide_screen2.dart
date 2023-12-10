import 'package:explora/slide_screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideScreen2 extends StatefulWidget {
  const SlideScreen2({Key? key}) : super(key: key);

  @override
  _SlideScreen2State createState() => _SlideScreen2State();
}

class _SlideScreen2State extends State<SlideScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 180, 16, 0),
              child: Image.asset(
                "images/B1.png",
                scale: 4.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 95,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reach the",
                    style: GoogleFonts.montserrat(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "unknown spot.",
                    style: GoogleFonts.montserrat(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "To your destination",
                    style: GoogleFonts.montserrat(
                        fontSize: 24, fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Container(
                    width: 13,
                    height: 6,
                    decoration: ShapeDecoration(
                      color:Color(0xFF6C63FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                   SizedBox(width: 5,),
                   Container(
                    width: 16,
                    height: 6,
                    decoration: ShapeDecoration(
                      color:  Color(0xFF2F2E41),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 13,
                    height: 6,
                    decoration: ShapeDecoration(
                      color: Color(0xFF6C63FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                   Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SlideScreen3()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
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
