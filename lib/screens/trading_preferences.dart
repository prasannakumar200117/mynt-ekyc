import 'package:flutter/material.dart';
import 'package:mynt_ekyc/screens/signature.dart';

class TradingPreferenceScreen extends StatefulWidget {
  @override
  _TradingPreferenceScreenState createState() =>
      _TradingPreferenceScreenState();
}

class _TradingPreferenceScreenState extends State<TradingPreferenceScreen> {
  String selectedTradingPreference = "Equity";
  String selectedMTF = "Yes";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                "What’s your trading Preference?",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Let’s Get Your Portfolio Started!",
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 13,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildChip("All"),
                  _buildChip("Equity"),
                  _buildChip("F&O"),
                  _buildChip("Debt"),
                  _buildChip("Currency"),
                  _buildChip("Commodity"),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Want to amplify your trades with MTF? Say yes for more buying power and bigger opportunities.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color:  Color(0xFF666666)),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _buildMTFChip("Yes"),
                  const SizedBox(width: 10),
                  _buildMTFChip("No"),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Heads up: SEBI Requires Income Proof for Trading Derivatives. Just upload it, and you’re good to go! Your Income proof to trade in Derivatives.",
                style: TextStyle(fontSize: 12, color: Color(0xFF666666)),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => UploadSignScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child:
                      Text("Continue", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                   color  :Color.fromARGB(128, 246, 247, 247)
,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Risk disclosures on derivatives by SEBI:",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                        "9 out of 10 individual traders in equity Futures and Options segment incurred net losses."),
                    _buildBulletPoint(
                        "Over and above the net trading losses incurred, loss makers expended an additional 28% of net trading losses as transaction costs."),
                    _buildBulletPoint(
                        "On an average, loss makers registered net trading loss close to 50,000."),
                    _buildBulletPoint(
                        "Those making net trading profits incurred between 15% to 50% of such profits as transaction cost."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChip(String label) {
    bool isSelected = selectedTradingPreference == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTradingPreference = label;
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
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }




  Widget _buildMTFChip(String label) {
    bool isSelected = selectedMTF == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedMTF = label;
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
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

Widget _buildBulletPoint(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 4), 
    child: Text(
      "- $text",
      style: TextStyle(fontSize: 12, color: Color(0xFF666666)),
    ),
  );
}
