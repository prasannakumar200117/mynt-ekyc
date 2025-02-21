import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ekycProvider = ChangeNotifierProvider((ref) => EkycProvider());

class EkycProvider extends ChangeNotifier {
  final TextEditingController motherNameController = TextEditingController();

  final TextEditingController placeOfBirthController = TextEditingController();


  final TextEditingController otherBrokerNameController = TextEditingController();
  final TextEditingController otherBrokerClientIDController = TextEditingController();

   final TextEditingController introducerNameController = TextEditingController();
  final TextEditingController introducerClientIDController = TextEditingController();




// bank details
   final TextEditingController accountNumberController = TextEditingController();
   final TextEditingController ifscController = TextEditingController();



//Personal details

  String _maritalStatus = '';
  String _annualIncome = '';
  String _occupation = '';
  String _tradingExperience = '';
  String _otherBrokerName = "";
  String _otherBrokerClientID = "";
  String _introducerName = "";
  String _introducerClientID = "";
  bool? _isDealingWithStockBroker;
  bool? _isIntroducedByAnyone;

  bool? _isPoliticallyExposed;

  // Bank details

   String? _accountType;


  // ------------- Getter  ---------


  //Personal details
  String get maritalStatus => _maritalStatus;
  String get annualIncome => _annualIncome;
  String get occupation => _occupation;
  String get tradingExperience => _tradingExperience;
  bool? get isDealingWithStockBroker => _isDealingWithStockBroker;
  bool? get isIntroducedByAnyone => _isIntroducedByAnyone;
  bool? get isPoliticallyExposed => _isPoliticallyExposed;


  // Bank details
  String? get accountType => _accountType;



  // personal details

  void updateMaritalStatus(String status) {
    _maritalStatus = status;
    notifyListeners();
    print('marital status : ${maritalStatus}');
  }

  void updateAnnualIncome(String income) {
    _annualIncome = income;
    notifyListeners();
    print('annualIncome : ${annualIncome}');
  }

  void updateOccupation(String occupation) {
    _occupation = occupation;
    notifyListeners();
    print('occupation : ${occupation}');
  }

  void updateTradingExperience(String experience) {
    _tradingExperience = experience;
    notifyListeners();
    print('tradingExperience : ${tradingExperience}');
  }

  void updateIsDealingWithStockBroker(bool value) {
    _isDealingWithStockBroker = value;
    notifyListeners();
    print('isDealingWithStockBroker : ${isDealingWithStockBroker}');
  }

  void updateIsIntroducedByAnyone(bool value) {
    _isIntroducedByAnyone = value;
    notifyListeners();
    print('isIntroducedByAnyone : ${isIntroducedByAnyone}');
  }

  void updateIsPoliticallyExposed(bool value) {
    _isPoliticallyExposed = value;
    notifyListeners();
    print('isPoliticallyExposed : ${isPoliticallyExposed}');
  }



// bank details

  void updateAccountType(String type) {
    _accountType = (_accountType == type) ? null : type;
    notifyListeners();
     print('accountType : ${accountType}');
  }


}
