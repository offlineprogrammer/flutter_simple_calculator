import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/colors.dart' as constants;
import 'package:flutter_simple_calculator/ui/pages/calculator_page.dart';

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: constants.appBackground,
      ),
      home: const CalculatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
