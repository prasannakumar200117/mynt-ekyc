import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/screens/email_page.dart';

class KycVerify extends StatefulWidget {
  const KycVerify({super.key});

  @override
  State<KycVerify> createState() => _KycVerifyState();
}

class _KycVerifyState extends State<KycVerify>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/mainlogo.svg',
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.headphones,
                    color: Colors.black54,
                    size: 23,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Need Help ?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Open your free Demat & Trading account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Open an account in under 6 clicks and Kick-start your Investment Journey ',
              style: TextStyle(
                color: Color(0xFF666666),
                fontSize: 16, height: 1.6
              ),
            ),
            SizedBox(height: 35),
            Row(
              children: [Text(
              'Enter mobile number ',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
           
           
            // SizedBox(width: 4),
                SvgPicture.asset(
                  'assets/star.svg',
                  width: 9,
                  height: 9,
                ),
            ],
            ),
             SizedBox(height: 10),

             TextField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SvgPicture.asset(
                  'assets/mobile.svg',
                  width: 20,
                  height: 20,
                ),
                ),
                prefixIconConstraints: BoxConstraints(
                  minWidth: 0, 
                 
                ),
                hintText: 'Enter mobile number to begin',
               hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0x801138E7), width: 2),
                ),
                suffix: Text(
      'Change number',
      style: TextStyle(color: Color(0xFF0037B7), fontSize: 12, fontWeight: FontWeight.w700),
    ),
                // contentPadding:
                //     EdgeInsets.symmetric(vertical: 16, horizontal: 0),
              ),
            ),
             SizedBox(height: 20),

            Row(
              children: [
                 Text(
              'Enter 4 digit OTP sent to mobile no. ',
              style: TextStyle(
                color: Colors.black,
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
            
            
            SizedBox(height: 10),
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
                prefixIconConstraints: BoxConstraints(
                  minWidth: 0, 
                 
                ),
                hintText: '0000',
               hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0x801138E7), width: 2),
                ),
                 suffix: Text(
      'Resend OTP',
      style: TextStyle(color: Color(0xFF0037B7), fontSize: 12, fontWeight: FontWeight.w700),
    ),
                
                // contentPadding:
                //     EdgeInsets.symmetric(vertical: 16, horizontal: 0),
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmailVerification()),
    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
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
