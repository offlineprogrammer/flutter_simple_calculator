import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/ui/widgets/calculator_buttons.dart';
import 'package:flutter_simple_calculator/ui/widgets/calculator_result.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          margin: const EdgeInsets.only(left: 8),
          child: const Text(
            'Flutter Calculator',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(child: CalculatorResult()),
            Expanded(flex: 2, child: CalculatorButtons())
          ],
        ),
      ),
    );
  }
}
