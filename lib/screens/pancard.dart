import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/screens/digilocker_kyc.dart';

class PanCardCheck extends StatefulWidget {
  const PanCardCheck({super.key});

  @override
  State<PanCardCheck> createState() => _PanCardCheckState();
}

class _PanCardCheckState extends State<PanCardCheck> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back Button
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.arrow_back, color: Color(0x8A000000)),
                        SizedBox(width: 8),
                        Text(
                          'Step 1 of 6',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF666666),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    'Start with your PAN card.',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w900,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'It’s your Gateway to Investing! ',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 13,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 35),

                  // PAN Card Number

                  const Text(
                    'Your PAN Card Number ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.text,
                    maxLength: 10,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          'assets/pan.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                      ),
                      // hintText: "Enter PAN Number",
                      // hintStyle:
                      //     const TextStyle(color: Colors.grey, fontSize: 14),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0x801138E7), width: 2),
                      ),
                      suffix: const Text(
                        "Change",
                        style: TextStyle(
                          color: Color(0xFF0037B7),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Date of Birth

                  const Text(
                    'Enter your date of birth exactly as per your PAN. ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          'assets/calendar.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                      ),
                      hintText: "DD/MM/YYYY",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0x801138E7), width: 2),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Name as per PAN

                  const Text(
                    'Your name as per the PAN ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          'assets/identity.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                      ),
                      // hintText: "Enter Name",
                      // hintStyle:
                      //     const TextStyle(color: Colors.grey, fontSize: 14),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0x801138E7), width: 2),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Instructions
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("• ", style: TextStyle(fontSize: 16)),
                          Expanded(
                            child: const Text(
                              "Enter your name as per the PAN card, including a dot and a space.",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  height: 1.5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("• ", style: TextStyle(fontSize: 16)),
                          Expanded(
                            child: const Text(
                              "If it is not verified, try the combinations of \"FATHER NAME\" <SPACE> \"YOUR NAME\" or \"YOUR NAME\" <SPACE> \"FATHER NAME\".",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  height: 1.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Aadhaar Number

                  Text(
                    'Your Aadhaar card number ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 5),
                  TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 12,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          'assets/aadhar.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                      ),
                      // hintText: "Enter Aadhaar Number",
                      // hintStyle:
                      //     const TextStyle(color: Colors.grey, fontSize: 14),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0x801138E7), width: 2),
                      ),
                    ),
                  ),

                  const SizedBox(height: 80),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DigiLockerScreen()),
                  );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        //  padding: const EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
