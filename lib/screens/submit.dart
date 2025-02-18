import 'package:flutter/material.dart';
import 'package:mynt_ekyc/screens/completed.dart';

class FinalSubmit extends StatefulWidget {
  const FinalSubmit({super.key});

  @override
  State<FinalSubmit> createState() => _FinalSubmitState();
}

class _FinalSubmitState extends State<FinalSubmit>
    with SingleTickerProviderStateMixin {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                      const Text(
                        "Mandatory Declarations",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildCheckbox(
                        "I confirm all details shared during onboarding are accurate to the best of my knowledge.",
                        check1,
                        (value) => setState(() => check1 = value!),
                      ),
                      _buildCheckbox(
                        "I certify that my annual income and net worth are up-to-date (within the past year).",
                        check2,
                        (value) => setState(() => check2 = value!),
                      ),
                      _buildCheckbox(
                        "I have read and understood the content of all mandatory documents.",
                        check3,
                        (value) => setState(() => check3 = value!),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
  padding: const EdgeInsets.all(16.0),
  child: SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CompletedScreen()),
            );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, 
        foregroundColor: Colors.white, 
      ),
      child: const Text("Aadhar eSign"),
    ),
  ),
),

          ],
        ),
      ),
    );
  }

 Widget _buildCheckbox(String text, bool value, Function(bool?) onChanged) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24, // Set a fixed width for the checkbox to avoid extra space
          height: 40, // Set a fixed height to align properly
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            activeColor: Colors.black,
            checkColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces tap target padding
            visualDensity: VisualDensity.compact, // Reduces additional space
          ),
        ),
        const SizedBox(width: 8), // Small gap between checkbox and text
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 14, color: Color(0x99000000)
),
          ),
        ),
      ],
    ),
  );
}

}