import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_simple_calculator/controller/calculator_controller.dart';

class CalculatorResult extends ConsumerWidget {
  const CalculatorResult({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculator = ref.watch(calculatorProvider);
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            calculator.equation,
            overflow: TextOverflow.ellipsis,
            style:
                const TextStyle(color: Colors.white, fontSize: 36, height: 1),
          ),
          const SizedBox(height: 24),
          Text(
            calculator.result,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
