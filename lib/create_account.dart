import 'package:explora/verification.dart';
import 'package:explora/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({ Key? key }) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 16, 0),
                child: Image.asset(
                  "images/F1.png",
                  scale: 7.2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Get Started",
                style: GoogleFonts.montserrat(
                  fontSize: 28,
                  color: Color(0xFF6C63FF),
                ),
              ),
            ),
            Center(
              child: Text(
                "by creating a free account",
                style: GoogleFonts.montserrat(fontSize: 16, color: Colors.grey),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 60,
                  // width: 50,
                ),
                // fullname TextField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.person,
                        size: 18,
                        color: Colors.grey,
                      ),
                      labelText: 'Full name',
                      labelStyle: GoogleFonts.montserrat(color: Colors.grey),
                      //hintText:'Mobile number', // Hint text inside the TextField
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // Padding inside the TextField
                      border: OutlineInputBorder(
                        // Custom border

                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xffE5E7EB)),

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
                //email textfield
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        size: 18,
                        color: Colors.grey,
                      ),
                      labelText: 'Valid email',
                      labelStyle: GoogleFonts.montserrat(color: Colors.grey),
                      //hintText:'Mobile number', // Hint text inside the TextField
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // Padding inside the TextField
                      border: OutlineInputBorder(
                        // Custom border

                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xffE5E7EB)),

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
                  // width: 50,
                ),
                // phone number TextField
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
                      labelText: 'Mobile number',
                      labelStyle: GoogleFonts.montserrat(color: Colors.grey),
                      //hintText:'Mobile number', // Hint text inside the TextField
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      // Padding inside the TextField
                      border: OutlineInputBorder(
                        // Custom border

                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xffE5E7EB)),

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
                      labelText: 'Strong password',
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      "Agree to our Terms and Conditions.",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Color(0xFF6C63FF),
                      ),
                    ),
                    
                  ],
                ),
                
                SizedBox(
                  height: 90,
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
                        "Already Member?",
                        style: GoogleFonts.montserrat(
                            fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 2,),
                    InkWell(
                       onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    },
                      child: Text(
                        "Log In",
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