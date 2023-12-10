import 'package:explora/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'create_account.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 16, 0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  "images/D1.png",
                  scale: 3.2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Welcome",
                style: GoogleFonts.montserrat(
                  fontSize: 28,
                  color: Color(0xFF6C63FF),
                ),
              ),
            ),
            Center(
              child: Text(
                "sign in to access your account",
                style: GoogleFonts.montserrat(fontSize: 16, color: Colors.grey),
              ),
            ),SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  // width: 50,
                ),
                // Email TextField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_rounded,
                        size: 18,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter your mobile number',
                      labelStyle: GoogleFonts.montserrat(color: Colors.grey),
                      //hintText:'Mobile number', // Hint text inside the TextField
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // Padding inside the TextField
                      border: OutlineInputBorder(
                        // Custom border

                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xffE5E7EB),),

                        // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        // Custom focused border
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 187, 183, 255),
                        ), // Border color when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        // Custom focused border
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(0xffE5E7EB),
                        ), // Border color when focused
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Password TextField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.lock,
                        size: 18,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter your password',
                      labelStyle: GoogleFonts.montserrat(color: Colors.grey),
                      //hintText: 'Password',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // Padding inside the TextField
                      border: OutlineInputBorder(
                        // Custom border
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 187, 183, 255),
                        ),
                        // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        // Custom focused border
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 187, 183, 255),
                        ), // Border color when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        // Custom focused border
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color:
                                Color(0xffE5E7EB)), // Border color when focused
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      "Remember me",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Color(0xFF6C63FF),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: Text(
                          "Forget Passwords?",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Color(0xFF6C63FF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                // Continue Button
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: 350.0, // Set custom width
                      height: 45.0, // Set custom height
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff6366F1),
                          ), // Set background color
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), // Set text color
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0), // Set border radius
                            ),
                          ),
                        ),
                        
                        onPressed: () {
                          
                          // Assume validation is successful and navigate to OTP page
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Verification()),
                      );
                          
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Next',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20.0, // Set custom font size
                                  //fontWeight: FontWeight.w800, // Make text bold
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "New Member?",
                        style: GoogleFonts.montserrat(
                            fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 2,),
                    InkWell(
                       onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateAccount()),
                      );
                    },
                      child: Text(
                        "Register now",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Color(0xff6366F1),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
