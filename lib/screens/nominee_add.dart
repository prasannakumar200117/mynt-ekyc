import 'package:flutter/material.dart';

import 'nominee_details.dart';

class AddNomineeScreen extends StatefulWidget {
  @override
  _AddNomineeScreenState createState() => _AddNomineeScreenState();
}

class _AddNomineeScreenState extends State<AddNomineeScreen> {
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
                "Would you like to add nominee for your investment?",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Secure your investments for the future by adding up to 3 nominees. Example - You can split percentages like 40%, 25%, and 35% among them.",
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 13,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OutlinedButton(
                    onPressed: () {
                       Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => NomineeDetails()),
            );
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      side: const BorderSide(color: Color(0xFF666666)
, width: 1.5),
                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    ),
                    child: const Text(
                      "Yes, Add a Nominee",
                      style: TextStyle(
                        color: Color(0xFF666666)
,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      side: const BorderSide(color: Color(0xFF666666)
, width: 1.5),
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    ),
                    child: const Text(
                      "No, I’ll Add Later",
                      style: TextStyle(
                        color: Color(0xFF666666)
,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
