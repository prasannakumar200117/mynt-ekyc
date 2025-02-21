import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mynt_ekyc/screens/index.dart';
import 'package:mynt_ekyc/screens/personal_details.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Mynt ekyc',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(      
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Colors.white
      ),
      home: PersonalDetailsScreen() ,
    );
  }
}

