// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Calculator _$$_CalculatorFromJson(Map<String, dynamic> json) =>
    _$_Calculator(
      equation: json['equation'] as String,
      result: json['result'] as String,
      shouldAppend: json['shouldAppend'] as bool?,
    );

Map<String, dynamic> _$$_CalculatorToJson(_$_Calculator instance) =>
    <String, dynamic>{
      'equation': instance.equation,
      'result': instance.result,
      'shouldAppend': instance.shouldAppend,
    };
