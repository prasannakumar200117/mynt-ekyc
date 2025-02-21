import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/providers/ekyc_provider.dart';
import 'package:mynt_ekyc/screens/trading_preferences.dart'; // Add flutter_svg package in pubspec.yaml

class BankDetails extends ConsumerWidget  {
   BankDetails({super.key});





  

  @override
  Widget build(BuildContext context, WidgetRef ref) {

     final ekyc = ref.watch(ekycProvider);

    return SafeArea(
      child: Container(
        color: Colors.white,
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
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
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
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          _buildChip("Saving", ref),
                          const SizedBox(width: 10),
                          _buildChip("Current", ref),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Enter your account number",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      TextField(
                keyboardType: TextInputType.number,
                controller: ekyc.accountNumberController,
                
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
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      TextField(
                        controller: ekyc.ifscController,
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
                 
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text("Change", style: TextStyle(color: Color(0xFF444444), fontSize: 14, fontWeight: FontWeight.w500
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
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text("Continue", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget _buildChip(String type, WidgetRef ref) {
   final ekyc = ref.watch(ekycProvider);
    bool isSelected = ekyc.accountType == type;

    return GestureDetector(
      onTap: () {
        ekyc.updateAccountType(type);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          type,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
