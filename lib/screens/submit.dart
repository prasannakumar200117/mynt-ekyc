import 'package:flutter/material.dart';

class FinalSubmit extends StatefulWidget {
  const FinalSubmit({super.key});

  @override
  State<FinalSubmit> createState() => _FinalSubmitState();
}

class _FinalSubmitState extends State<FinalSubmit>
    with SingleTickerProviderStateMixin {



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
                "Final step, let’s lock it in!",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Use Aadhaar e-Sign to verify your account and take the first step toward smarter trading and investing.",
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 13,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),             
            ],
          ),
        ),
      ),
    );
  }
}