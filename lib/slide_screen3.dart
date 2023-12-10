import 'package:explora/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideScreen3 extends StatefulWidget {
  const SlideScreen3({Key? key}) : super(key: key);

  @override
  _SlideScreen3State createState() => _SlideScreen3State();
}

class _SlideScreen3State extends State<SlideScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 178, 16, 0),
              child: Image.asset(
                "images/C1.png",
                scale: 4.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 115,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Make Connects",
                    style: GoogleFonts.montserrat(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "with explora.",
                    style: GoogleFonts.montserrat(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "To your dream trip",
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
                    width: 13,
                    height: 6,
                    decoration: ShapeDecoration(
                      color: Color(0xFF6C63FF),
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
                      color:Color(0xFF2F2E41),
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
                        MaterialPageRoute(builder: (context) => Welcome()),
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
