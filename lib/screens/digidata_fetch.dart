import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynt_ekyc/screens/upload_pan.dart';

class AadhaarVerificationScreen extends StatefulWidget {
  const AadhaarVerificationScreen({Key? key}) : super(key: key);

  @override
  State<AadhaarVerificationScreen> createState() => _AadhaarVerificationScreenState();
}

class _AadhaarVerificationScreenState extends State<AadhaarVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                      'Data fetched from Aadhaar record',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w900,
                        color: Color(0xDE000000),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'We need your Aadhaar details for identity proof. It is necessary.',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 13,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 30),
                    buildCustomInputField(
                      context: context,
                      label: 'Your Aadhaar Number',
                      iconPath: 'assets/aadhar.svg',
                      isEditable: false,
                      isVerified: false,
                      initialValue: 'xxxxxxxx3523',
                    ),
                    const SizedBox(height: 25),
                    buildCustomInputField(
                      context: context,
                      label: 'Your Name (as on Aadhaar)',
                      iconPath: 'assets/identity.svg',
                      isEditable: false,
                      initialValue: 'Janakiraman',
                    ),
                    const SizedBox(height: 25),
                    buildCustomInputField(
                      context: context,
                      label: 'Your Date of Birth (match PAN for seamless verification)',
                      iconPath: 'assets/calendar.svg',
                      isEditable: false,
                      initialValue: '06-07-2001',
                    ),
                    const SizedBox(height: 25),
                    buildCustomInputField(
                      context: context,
                      label: "Your Father’s Name (for KYC records)",
                      iconPath: 'assets/identity.svg',
                      isEditable: false,
                      initialValue: 'VELAYUTHAM',
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.all(14),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x000000DE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'NO 3/903 MANIAMMAI STREET  Palavakkam\nKancheepuram Tamil Nadu 600041',
                        style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.8),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'This is your communication address—it’ll help us stay in touch!',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                        height: 1.6, fontWeight: FontWeight.w500
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
           Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  child: Row(
    children: [
      Expanded(
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 8), 
            side: const BorderSide(color: Colors.black, width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'Change',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
      const SizedBox(width: 20),
      Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8), 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
             Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UploadPan()),
                  );
          },
          child: const Text(
            'Continue',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),

      
    ],
  ),
)

          ],
        ),
      ),
    );
  }

  Widget buildCustomInputField({
    required BuildContext context,
    required String label,
    required String iconPath,
    bool isEditable = true,
    bool isVerified = false,
    TextEditingController? controller,
    String? initialValue,
    
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 2),
        TextField(
          controller: controller ?? TextEditingController(text: initialValue),
          enabled: isEditable,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: SvgPicture.asset(iconPath, width: 20, height: 20),
            ),
            prefixIconConstraints: const BoxConstraints(minWidth: 32, minHeight: 32),
            suffixIcon: isVerified
                ? const Icon(Icons.verified, color: Colors.green)
                : null,
           
            hintStyle: const TextStyle(color: Colors.grey),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          style: const TextStyle(color: Colors.black87, fontSize: 16),
        ),
      ],
    );
  }
}
