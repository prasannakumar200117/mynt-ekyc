import 'package:flutter/material.dart';
import 'package:mynt_ekyc/screens/bank_details.dart';
import 'package:mynt_ekyc/screens/upi_confirmation.dart';

class LinkBankAcc extends StatefulWidget {
  const LinkBankAcc({super.key});

  @override
  State<LinkBankAcc> createState() => _LinkBankAccState();
}

class _LinkBankAccState extends State<LinkBankAcc> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
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
              const Text(
                'Link your Bank Account',
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
              const SizedBox(height: 35),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedOption = 1;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpiConfirmationScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Verify with any UPI ID",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Radio<int>(
                            value: 1,
                            groupValue: _selectedOption,
                            onChanged: (int? newValue) {
                              setState(() {
                                _selectedOption = newValue!;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const UpiConfirmationScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                     
                       Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2),
                            
                        decoration: BoxDecoration(
                          color: const Color(0xFF66BB6A),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          "Recommended",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),

                       const SizedBox(height: 10),

                      SizedBox(
                        width: 200,
                        child: const Text(
                          "Let’s make this quick! We’ll debit ₹1 (and refund it later) to confirm your account.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666),
                          ),
                        ),
                      ),
                      
                     
                    ],
                  ),
                ),

              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedOption = 2;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BankDetails(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Add Details Manually",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Radio<int>(
                            value: 2,
                            groupValue: _selectedOption,
                            onChanged: (int? newValue) {
                              setState(() {
                                _selectedOption = newValue!;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BankDetails(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 200,
                        child: const Text(
                          "Prefer the manual route? Enter your account number and IFSC code to get started.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666),
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

