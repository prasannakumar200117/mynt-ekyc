import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/screens/trading_preferences.dart'; // Add flutter_svg package in pubspec.yaml

class BankDetails extends StatefulWidget {
  const BankDetails({super.key});

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  String? _accountType; // Initially none selected
  final TextEditingController _accountNumberController = TextEditingController();
  final TextEditingController _ifscController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                      "Enter your Bank Details",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w900,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Add your savings or current account to ensure secure and hassle-free fund transfers for investing and trading.",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 13,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Select account type",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _buildChip("Saving"),
                        const SizedBox(width: 10),
                        _buildChip("Current"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Enter your account number",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextField(
              keyboardType: TextInputType.number,
              controller: _accountNumberController,
              
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                 prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SvgPicture.asset(
                  'assets/bank.svg',
                  width: 20,
                  height: 20,
                ),
                ),
                 prefixIconConstraints:
                            const BoxConstraints(minWidth: 0),
                
               
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0x801138E7), width: 2),
                ),
                 
                
                // contentPadding:
                //     EdgeInsets.symmetric(vertical: 16, horizontal: 0),
              ),
            ),
                    const SizedBox(height: 20),
                    const Text(
                      "Enter IFSC code",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      controller: _ifscController,
                      keyboardType: TextInputType.text,
                      maxLength: 11,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                         padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset(
                            'assets/ifsc.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
   prefixIconConstraints:
                            const BoxConstraints(minWidth: 0),

                       
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text("Change", style: TextStyle(color: Color(0xFF444444)
),),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TradingPreferenceScreen()),
            );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text("Continue", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String type) {
    final bool isSelected = _accountType == type;
    return GestureDetector(
      onTap: () {
        setState(() {
          _accountType = isSelected ? null : type;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          type,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,fontSize: 12
          ),
        ),
      ),
    );
  }
}
