import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpiConfirmationScreen extends StatefulWidget {
  const UpiConfirmationScreen({super.key});

  @override
  State<UpiConfirmationScreen> createState() => _UpiConfirmationScreenState();
}

class _UpiConfirmationScreenState extends State<UpiConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step 4 of 6
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.arrow_back, color: Color(0x8A000000)),
                    SizedBox(width: 8),
                    Text(
                      'Step 4 of 6',
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

              // Title and Description
              const Text(
                "Link your Bank Account",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "To unlock seamless transactions. Your details are safe and secure—we’re just making sure everything matches!",
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 13,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 30),

              // QR Code Section
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Scan QR code with any UPI app",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SvgPicture.asset(
                      'assets/upipay.svg', // Replace with your SVG path
                      width: 200,
                      height: 40,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.grey.shade300,
                      child: const Center(
                        child: Text(
                          "QR Code",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Pay ₹1.00",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 200,
                      child: OutlinedButton(
                        onPressed: () {
                          // Cancel Transaction action
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text("Cancel Transaction"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        'assets/greentick.svg',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Center(
                      child: Text(
                        "Bank Account Verified! You’re all set to trade with ease.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0x80F6F7F7),
                        border: Border.all(color: Color(0xFFEBEEF0)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Table(
                        columnWidths: const {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(5),
                        },
                        children: const [
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Bank",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Tamilnad Mercantile Bank \n A/C No : 454100080200290",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF121212),fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "IFSC Code",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "TMBL0000454",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF121212),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Branch",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "CHENNAI",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF121212),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Address",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "no 35 1a, first floor, srs arcade, velachery main road, velachery, chennai 600 042, tamil nadu",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF121212),
                                    fontWeight: FontWeight.w500,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
