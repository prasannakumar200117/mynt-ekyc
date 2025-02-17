import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/screens/bank_account.dart';
import 'package:mynt_ekyc/screens/email_page.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  _PersonalDetailsScreenState createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  final TextEditingController _motherNameController = TextEditingController();
  final TextEditingController _placeOfBirthController = TextEditingController();

  String _selectedMaritalStatus = '';
  String _selectedIncome = '';
  String _selectedOccupation = '';
  String _selectedTradingExperience = '';

  Map<String, bool> yesNoAnswers = {
    "stockBroker": false,
    "introducedByAnyone": false,
    "politicallyExposed": false,
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
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
                            'Step 3 of 6',
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
                      'Personal details',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w900,
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
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                      controller: _motherNameController,
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
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    TextField(
                      controller: _placeOfBirthController,
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
                      selectedValue: _selectedMaritalStatus,
                      onSelected: (value) => setState(() {
                        _selectedMaritalStatus = value;
                      }),
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
                      selectedValue: _selectedIncome,
                      onSelected: (value) => setState(() {
                        _selectedIncome = value;
                      }),
                    ),
                    const SizedBox(height: 30),

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
                      selectedValue: _selectedOccupation,
                      onSelected: (value) => setState(() {
                        _selectedOccupation = value;
                      }),
                    ),
                    const SizedBox(height: 30),

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
                      selectedValue: _selectedTradingExperience,
                      onSelected: (value) => setState(() {
                        _selectedTradingExperience = value;
                      }),
                    ),
                    const SizedBox(height: 30),

                    _buildYesNoQuestion(
                        "Are you dealing through other stock Broker?",
                        "stockBroker"),

                    const SizedBox(height: 5),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter your other broker name",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0x801138E7), width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter your other broker client ID",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0x801138E7), width: 2),
                        ),
                      ),
                    ),

                    _buildYesNoQuestion(
                        "Are you introduced by anyone?", "introducedByAnyone"),

                    const SizedBox(height: 5),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter your introducer name",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0x801138E7), width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter your introducer client ID",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0x801138E7), width: 2),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    _buildYesNoQuestion(
                        "Are you politically exposed or related person?",
                        "politicallyExposed"),
                    const SizedBox(height: 15),
                    const Text(
                      "Politically exposed persons or their associates are restricted from trading. For further clarification, please contact our Help Desk at 9380108010. ",
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
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LinkBankAcc()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
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
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8, // Horizontal spacing between chips
          runSpacing: 12, // Vertical spacing between lines of chips
          children: options.map((option) {                      
            final isSelected = selectedValue == option;
            return GestureDetector(
              onTap: () => onSelected(option),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  option,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,fontSize: 12
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildYesNoQuestion(String question, String key) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          question,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            _buildYesNoChip("Yes", yesNoAnswers[key] == true, () {
              setState(() {
                yesNoAnswers[key] = true;
              });
            }),
            const SizedBox(width: 10),
            _buildYesNoChip("No", yesNoAnswers[key] == false, () {
              setState(() {
                yesNoAnswers[key] = false;
              });
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,fontSize: 12
        ),
      ),
    ),
  );
}

}