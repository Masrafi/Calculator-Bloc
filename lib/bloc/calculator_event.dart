import 'package:equatable/equatable.dart';

abstract class CalculatorEvent extends Equatable {
  const CalculatorEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AddButtonTapped extends CalculatorEvent {
  final int firstOperand;
  final int secondOperand;
  const AddButtonTapped(
      {required this.firstOperand, required this.secondOperand});
}

class SubTractButtonTapped extends CalculatorEvent {
  final int firstOperand;
  final int secondOperand;
  const SubTractButtonTapped(
      {required this.firstOperand, required this.secondOperand});
}

class MultiplyButtonTapped extends CalculatorEvent {
  final int firstOperand;
  final int secondOperand;
  const MultiplyButtonTapped(
      {required this.firstOperand, required this.secondOperand});
}

class DivideButtonTapped extends CalculatorEvent {
  final int firstOperand;
  final int secondOperand;
  const DivideButtonTapped(
      {required this.firstOperand, required this.secondOperand});
}
