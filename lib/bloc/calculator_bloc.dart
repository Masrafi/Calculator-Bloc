import 'package:calculator/bloc/calculator_event.dart';
import 'package:calculator/bloc/calculator_stste.dart';
import 'package:calculator/repo/claculator_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final CalculatorRepo calculatorRepo;
  CalculatorBloc({required this.calculatorRepo})
      : super(const CalculatorInitial(result: "Result")) {
    on<AddButtonTapped>((event, emit) {
      final sum = calculatorRepo.sum(
          operand1: event.firstOperand, operand2: event.secondOperand);
      emit(CalculatorResultSuccessful(result: sum.toDouble()));
    });

    on<SubTractButtonTapped>((event, emit) {
      final difference = calculatorRepo.difference(
          operand1: event.firstOperand, operand2: event.secondOperand);
      emit(CalculatorResultSuccessful(result: difference.toDouble()));
    });

    on<MultiplyButtonTapped>((event, emit) {
      final product = calculatorRepo.product(
          operand1: event.firstOperand, operand2: event.secondOperand);
      emit(CalculatorResultSuccessful(result: product.toDouble()));
    });

    on<DivideButtonTapped>((event, emit) {
      final division = calculatorRepo.division(
          operand1: event.firstOperand, operand2: event.secondOperand);
      emit(CalculatorResultSuccessful(result: division.toDouble()));
    });
  }
}
