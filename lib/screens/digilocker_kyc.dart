import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/screens/digidata_fetch.dart';

class DigiLockerScreen extends StatelessWidget {
  const DigiLockerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.arrow_back, color: Color(0x8A000000)),
                    SizedBox(width: 8),
                    Text(
                      'Step 2 of 6',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Complete the KYC via DigiLocker',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Color(0xDE000000),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Share PAN card and Aadhaar details',
                style: TextStyle(
                    color: Color(0xFF666666), fontSize: 13, height: 1.6),
              ),
              const SizedBox(height: 40),

              Center(
                child: Image.asset(
                  'assets/digilockerverfisteps.png',
                  width: screenWidth * 0.8,
                ),
              ),

              const SizedBox(height: 24),
              const Center(
                child: Text(
                  "Government recognized paperless storage for all documents.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                  ),
                ),
              ),
              // const SizedBox(height: 2),
              const Center(
                child: Text(
                  '"DigiLocker is a digital locker facility provided by the government."',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              /// Important Notice Box
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "IMPORTANT!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black87),
                          children: [
                            const TextSpan(text: "Please "),
                            const TextSpan(
                              text: "select all ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(text: "the documents on the "),
                            const TextSpan(
                              text: "DigiLocker consent ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(text: "screen."),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x1F000000)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(
                        'assets/digilockerfilescheck.svg',
                        width: screenWidth * 0.9,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 27),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AadhaarVerificationScreen()),
                  );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/fetchdocs.svg',
                          height: 16,
                          width: 16,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Click to fetch documents from Digi Locker",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Don't have DigiLocker account? ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            "Click here",
                            style: TextStyle(
                              color: Color(0xFF0037b7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
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
