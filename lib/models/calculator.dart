import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator.freezed.dart';
part 'calculator.g.dart';

@Freezed()
class Calculator with _$Calculator {
  const factory Calculator({
    required String equation,
    required String result,
    bool? shouldAppend,
  }) = _Calculator;

  factory Calculator.fromJson(Map<String, dynamic> json) =>
      _$CalculatorFromJson(json);
}
