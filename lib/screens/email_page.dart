import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/screens/pancard.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      color: Colors.white, 
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.arrow_back, color: Color(0x8A000000)),
                        SizedBox(width: 4),
                        Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF666666),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Add your E-mail Address',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w900,
                      color: Color(0xDE000000),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'We need your email address to send account-related updates',
                    style: TextStyle(
                        color: Color(0xFF666666), fontSize: 13, height: 1.6),
                  ),
                  const SizedBox(height: 35),
                  SizedBox(
                    width: screenWidth,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon:
                          SvgPicture.asset('assets/googleicon.svg', height: 24),
                      label: const Text(
                        'Continue with Google',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: screenWidth,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/mail.svg', height: 24),
                      label: const Text(
                        'Add e-mail manually',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Text(
                        'Enter email address ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/star.svg',
                        width: 9,
                        height: 9,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          'assets/mail.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                            contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                      prefixIconConstraints:  BoxConstraints(
                        minWidth: 0,
                      ),
                      hintText: 'Enter email address',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0x801138E7), width: 2),
                      ),
                      suffixIcon: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Change E-mail',
                          style: TextStyle(
                              color: Color(0xFF0037B7),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
              
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Text(
                        'Enter 4 digit OTP sent to your e-mail ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/star.svg',
                        width: 9,
                        height: 9,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          'assets/mobilemessage.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                      ),
                      hintText: '0000',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0x801138E7), width: 2),
                      ),
                      suffix: const Text(
                        'Resend OTP',
                        style: TextStyle(
                            color: Color(0xFF0037B7),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.4,
                        child: Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Colors.black,
                          checkColor: Colors.white,
                          shape: const CircleBorder(),
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            text: 'I would like to receive the ',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 14,
                              height: 1.5,
                            ),
                            children: [
                              TextSpan(
                                text: 'alerts and notifications',
                                style: TextStyle(
                                  color: Color(0xFF0037B7),
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                ),
                              ),
                              TextSpan(
                                text: ' from ZEBU.',
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PanCardCheck()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
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
          ],
        ),
      ),
    );
  }
}
