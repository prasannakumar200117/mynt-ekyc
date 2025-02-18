import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  int _currentStep = 0;

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
              SvgPicture.asset(
                'assets/congrats.svg',
                height: 80,
                width: 80,
              ),
              const SizedBox(height: 16),
              const Text(
                'Woohoo JANAKIRAMAN!',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Color(0xDE000000)),
              ),
              const SizedBox(height: 8),
              const Text(
                "Your application is in. 🎉 It'll take around 3-4 days for verification and activation as per regulatory requirements. We'll keep you posted via SMS or app notifications—sit back and relax!",
                style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 13,
                    height: 1.6,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              const Text(
                "Progress status",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF666666),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(child: 
               Column(
              children: [
                buildStepItem(
                  stepNumber: 1,
                  title: "Application Submitted",
                  subtitle: "Your form’s in, and you’re one step closer to trading greatness!",
                  isCompleted: true, 
                  isActive: false, 
                  isLastStep: false,
                ),
                buildStepItem(
                  stepNumber: 2,
                  title: "Inspection in Progress",
                  subtitle: "Our team is reviewing your details with care. Almost there!",
                  isCompleted: _currentStep > 1,
                  isActive: _currentStep == 1,
                  isLastStep: false,
                ),
                buildStepItem(
                  stepNumber: 3,
                  title: "Account Activations",
                  subtitle: "The moment your account is live, we’ll ping you via SMS or notifications. Get ready to trade!",
                  isCompleted: _currentStep > 2,
                  isActive: _currentStep == 2,
                  isLastStep: true, 
                ),
                SizedBox(height: 20),                
              ],
            ),
               )
            ],
          ),
        ),
      ),
    );
  }
}



Widget buildStepItem({
    required int stepNumber,
    required String title,
    required String subtitle,
    required bool isCompleted,
    required bool isActive,
    required bool isLastStep,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: isCompleted ? Colors.green : Colors.grey[300], 
                shape: BoxShape.circle,
              ),
              child: Center(
                child: isCompleted
                    ? Icon(Icons.check, color: Colors.white, size: 18) 
                    : Text(
                        stepNumber.toString(),
                        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
              ),
            ),
          
            if (!isLastStep)
              Container(
                width: 2,
                height: 40,
                color: Colors.grey[300],
              ),
          ],
        ),
        SizedBox(width: 12), 

        
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text(
                title,
                style: TextStyle(
                  fontWeight: isCompleted ? FontWeight.bold : FontWeight.normal, 
                  fontSize: 16,
                  color: isCompleted ? Colors.black : Colors.grey[500], 
                ),
              ),
              Text(subtitle, style: TextStyle(color: Colors.black54)),
              SizedBox(height: 20), 
            ],
          ),
        ),
      ],
    );
  }
