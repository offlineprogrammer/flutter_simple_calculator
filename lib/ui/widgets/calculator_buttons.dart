import 'package:flutter/material.dart';

import 'package:flutter_simple_calculator/colors.dart' as constants;

import 'package:flutter_simple_calculator/ui/widgets/calculator_buttons_row.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: constants.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        children: const [
          CalculatorButtonsRow(
            buttonsRow: ['', 'C', '<', '÷'],
          ),
          CalculatorButtonsRow(
            buttonsRow: ['7', '8', '9', '⨯'],
          ),
          CalculatorButtonsRow(
            buttonsRow: ['4', '5', '6', '-'],
          ),
          CalculatorButtonsRow(
            buttonsRow: ['1', '2', '3', '+'],
          ),
          CalculatorButtonsRow(
            buttonsRow: ['', '0', '.', '='],
          ),
        ],
      ),
    );
  }
}
