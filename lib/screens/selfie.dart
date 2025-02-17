import 'package:flutter/material.dart';
import 'package:mynt_ekyc/screens/submit.dart';

class SelfieTime extends StatefulWidget {
  const SelfieTime({super.key});

  @override
  State<SelfieTime> createState() => _SelfieTimeState();
}

class _SelfieTimeState extends State<SelfieTime>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.arrow_back, color: Color(0x8A000000)),
                    SizedBox(width: 8),
                    Text(
                      'Step 5 of 6',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Selfie Time!",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Snap a clear pic for KYC—stand in good light and let your smile do the work.",
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 13,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FinalSubmit()),
            );
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  side: const BorderSide(color: Colors.black, width: 1.5),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                ),
                child: const Text(
                  "Take a selfie",
                  style: TextStyle(
                    color: Color.fromARGB(255, 68, 68, 68),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}