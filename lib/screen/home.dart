import 'package:calculator/bloc/calculator_bloc.dart';
import 'package:calculator/bloc/calculator_event.dart';
import 'package:calculator/bloc/calculator_stste.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final TextEditingController firstOperandController = TextEditingController();
  final TextEditingController secondOperandController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CalculatorBloc, CalculatorState>(
              builder: (context, state) {
            if (state is CalculatorResultFailure) {
              return Text(state.message.toString());
            }
            if (state is CalculatorResultSuccessful) {
              return Text("Result: ${state.result.toString()}");
            }
            return const Text("Result: ");
          }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    key: const ValueKey('firstOperand'),
                    controller: firstOperandController,
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextField(
                    key: const ValueKey('secondOperand'),
                    controller: secondOperandController,
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  color: Theme.of(context).primaryColorLight,
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(
                        AddButtonTapped(
                            firstOperand:
                                int.parse(firstOperandController.text),
                            secondOperand:
                                int.parse(secondOperandController.text)));
                  },
                  child: const Icon(FontAwesomeIcons.plus)),
              MaterialButton(
                  color: Theme.of(context).primaryColorLight,
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(
                        SubTractButtonTapped(
                            firstOperand:
                                int.parse(firstOperandController.text),
                            secondOperand:
                                int.parse(secondOperandController.text)));
                  },
                  child: const Icon(FontAwesomeIcons.minus)),
              MaterialButton(
                  color: Theme.of(context).primaryColorLight,
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(
                        MultiplyButtonTapped(
                            firstOperand:
                                int.parse(firstOperandController.text),
                            secondOperand:
                                int.parse(secondOperandController.text)));
                  },
                  child: const Icon(FontAwesomeIcons.xmark)),
              MaterialButton(
                  color: Theme.of(context).primaryColorLight,
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(
                        DivideButtonTapped(
                            firstOperand:
                                int.parse(firstOperandController.text),
                            secondOperand:
                                int.parse(secondOperandController.text)));
                  },
                  child: const Icon(FontAwesomeIcons.divide)),
            ],
          )
        ],
      ),
    );
  }
}
