// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/providers/ekyc_provider.dart';
import 'package:mynt_ekyc/screens/bank_account.dart';

class PersonalDetailsScreen extends ConsumerWidget {
  PersonalDetailsScreen({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ekyc = ref.watch(ekycProvider);
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      // GestureDetector(
                      //   onTap: () => Navigator.of(context).pop(),
                      //   child: Row(
                      //     mainAxisSize: MainAxisSize.min,
                      //     children: const [
                      //       Icon(Icons.arrow_back, color: Color(0x8A000000)),
                      //       SizedBox(width: 8),
                      //       Text(
                      //         'Step 3 of 6',
                      //         style: TextStyle(
                      //           fontSize: 16,
                      //           color: Color(0xFF666666),
                      //           fontWeight: FontWeight.w700,
                      //         ),
                      //       ),
                      //   ],
                      // ),
                      // ),
                      const SizedBox(height: 12),
                      const Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xDE000000),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'We’d love to know you better! Share a few details so we can set you up for a smooth trading experience.',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 13,
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 30),
          
                      // Mother's Name Field
                      const Text(
                        "Your Mother’s Name",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter'),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: ekyc.motherNameController,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: SvgPicture.asset(
                              'assets/identity.svg',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 0),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0x801138E7), width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
          
                      // Place of Birth Field
                      const Text(
                        'Place of Birth',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter'),
                      ),
          
                      TextField(
                        controller: ekyc.placeOfBirthController,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0x801138E7), width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
          
                      _buildChipSelector(
                        label: "Marital Status",
                        options: ["Single", "Married"],
                        selectedValue: ekyc.maritalStatus,
                        onSelected: (value) {
                          ekyc.updateMaritalStatus(value);
                        },
                      ),
                      const SizedBox(height: 20),
          
                      _buildChipSelector(
                        label: "Your annual income",
                        options: [
                          "Below 1L",
                          "1L - 5L",
                          "5L - 10L",
                          "10L - 25L",
                          "Above 25L"
                        ],
                        selectedValue: ekyc.annualIncome,
                        onSelected: (value) {
                          ekyc.updateAnnualIncome(value);
                        },
                      ),
                      const SizedBox(height: 20),
          
                      _buildChipSelector(
                        label: "Your occupation",
                        options: [
                          "Private Sector",
                          "Public Sector",
                          "Government Service",
                          "Business",
                          "Housewife",
                          "Student",
                          "Retired",
                          "Agriculture",
                          "Others"
                        ],
                        selectedValue: ekyc.occupation,
                        onSelected: (value) {
                          ekyc.updateOccupation(value);
                        },
                      ),
                      const SizedBox(height: 20),
          
                      _buildChipSelector(
                        label: "Your trading experience",
                        options: [
                          "Nil",
                          "Less than 1 yr",
                          "1 - 2 yrs",
                          "2 - 3 yrs",
                          "3 - 4 yrs",
                          "More than 5 yrs"
                        ],
                        selectedValue: ekyc.tradingExperience,
                        onSelected: (value) {
                          ekyc.updateTradingExperience(value);
                        },
                      ),
                      const SizedBox(height: 20),
          
                      _buildYesNoQuestion(
                        question: "Are you dealing through other stock Broker?",
                        selectedValue: ekyc.isDealingWithStockBroker,
                        onSelected: (value) {
                          ekyc.updateIsDealingWithStockBroker(value);
                        },
                      ),
          
                      if (ekyc.isDealingWithStockBroker == true) ...[
            const SizedBox(height: 15),
            const Text(
              "Enter your other broker name",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: ekyc.otherBrokerNameController,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0x801138E7), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Enter your other broker client ID",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: ekyc.otherBrokerClientIDController,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0x801138E7), width: 2),
                ),
              ),
            ),
          ],
          
          SizedBox(height: 15,),
          
                      _buildYesNoQuestion(
                        question: "Are you introduced by anyone?",
                        selectedValue: ekyc.isIntroducedByAnyone,
                        onSelected: (value) {
                          ekyc.updateIsIntroducedByAnyone(value);
                        },
                      ),
          
                      if (ekyc.isIntroducedByAnyone == true) ...[
  const SizedBox(height: 15),
  const Text(
    "Enter your introducer name",
    style: TextStyle(
      color: Colors.black87,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  ),
  TextField(
    keyboardType: TextInputType.text,
    controller: ekyc.introducerNameController,
    decoration: InputDecoration(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0x801138E7), width: 2),
      ),
    ),
  ),
  const SizedBox(height: 15),
  const Text(
    "Enter your introducer client ID",
    style: TextStyle(
      color: Colors.black87,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  ),
  TextField(
    keyboardType: TextInputType.text,
    controller: ekyc.introducerClientIDController,
    decoration: InputDecoration(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0x801138E7), width: 2),
      ),
    ),
  ),
],

          
                      const SizedBox(height: 15),
          
                      _buildYesNoQuestion(
                        question:
                            "Are you politically exposed or related person?",
                        selectedValue: ekyc.isPoliticallyExposed,
                        onSelected: (value) {
                          ekyc.updateIsPoliticallyExposed(value);
                        },
                      ),
                      const SizedBox(height: 15),
                      if (ekyc.isPoliticallyExposed == true)
                        const Text(
                          "Politically exposed persons or their associates are restricted from trading. For further clarification, please contact our Help Desk at 9380108010.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFF44336),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LinkBankAcc()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: Text(
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
        ),
      ),
    );
  }

  Widget _buildChipSelector({
    required String label,
    required List<String> options,
    required String selectedValue,
    required Function(String) onSelected,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 15),
        Wrap(
          spacing: 8, // Horizontal spacing between chips
          runSpacing: 12, // Vertical spacing between lines of chips
          children: options.map((option) {
            final isSelected = selectedValue == option;
            return GestureDetector(
              onTap: () => onSelected(option),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  option,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildYesNoQuestion({
    required String question,
    required bool? selectedValue,
    required Function(bool) onSelected,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            _buildYesNoChip("Yes", selectedValue == true, () {
              onSelected(true);
            }),
            const SizedBox(width: 8),
            _buildYesNoChip("No", selectedValue == false, () {
              onSelected(false);
            }),
          ],
        ),
      ],
    );
  }

  Widget _buildYesNoChip(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 13),
        ),
      ),
    );
  }
}
