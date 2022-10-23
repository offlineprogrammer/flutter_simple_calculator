import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_simple_calculator/colors.dart' as constants;
import 'package:flutter_simple_calculator/controller/calculator_controller.dart';

class CalculatorButtonsRow extends ConsumerWidget {
  const CalculatorButtonsRow({
    required this.buttonsRow,
    super.key,
  });

  final buttonsRow;

  Color getBackgroundColor(String buttonText) {
    switch (buttonText) {
      case '+':
      case '-':
      case '⨯':
      case '÷':
      case '=':
        return constants.operationsbackground;

      case '':
        return constants.symbolesbackground;
      default:
        return constants.numbersbackground;
    }
  }

  void onClickedButton(String buttonText, WidgetRef ref) {
    final calculator = ref.read(calculatorProvider.notifier);

    switch (buttonText) {
      case 'C':
        calculator.reset();
        break;
      case '=':
        calculator.equals();
        break;
      case '<':
        calculator.delete();
        break;
      case '':
        break;

      default:
        calculator.append(buttonText);
        break;
    }
  }

  void onLongClickedButton(String text, WidgetRef ref) {
    final calculator = ref.read(calculatorProvider.notifier);

    if (text == '<') {
      calculator.reset();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Row(
        children: buttonsRow
            .map<Widget>(
              (text) => Expanded(
                child: Container(
                  height: double.infinity,
                  margin: const EdgeInsets.all(6),
                  child: ElevatedButton(
                    onPressed: () => onClickedButton(text, ref),
                    onLongPress: () => onLongClickedButton(text, ref),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: getBackgroundColor(text),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: text == '<'
                        ? const Icon(Icons.backspace_outlined,
                            color: Colors.white)
                        : Text(
                            text,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
