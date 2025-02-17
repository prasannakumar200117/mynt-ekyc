import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewAccSignUp extends StatefulWidget {
  const NewAccSignUp({super.key});

  

  @override
  State<NewAccSignUp> createState() => _NewAccSignUpState();
}

class _NewAccSignUpState extends State<NewAccSignUp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Open your free Demat & Trading account',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Open an account in under 6 clicks and Kick-start your Investment Journey ',
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 13,
            height: 1.6,
          ),
        ),
        SizedBox(height: 35),
        Row(
          children: [
            Text(
              'Enter mobile number ',
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
              style: TextStyle(
                  color: Color(0xFF0037B7),
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              'Enter 4 digit OTP sent to mobile no. ',
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
              style: TextStyle(
                  color: Color(0xFF0037B7),
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Spacer(),
        SizedBox(
      height: 56, 
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed:
           
          (){

          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
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
      ],
    ),
  );
  }
}