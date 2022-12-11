import 'package:equatable/equatable.dart';

abstract class CalculatorState extends Equatable {
  const CalculatorState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CalculatorInitial extends CalculatorState {
  final result;
  const CalculatorInitial({required this.result});

  @override
  // TODO: implement props
  List<Object?> get props => [result];
}

class CalculatorResultSuccessful extends CalculatorState {
  final result;
  const CalculatorResultSuccessful({required this.result});

  @override
  // TODO: implement props
  List<Object?> get props => [result];
}

class CalculatorResultFailure extends CalculatorState {
  final message;
  const CalculatorResultFailure({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
