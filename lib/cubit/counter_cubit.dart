import 'package:cubit_counter_say/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInittial());

  int counter = 0;

  increment() {
    emit(CounterLoadingState());
    Future.delayed(Duration(seconds: 1), () {
      counter++;
      emit(CounterUpdatedState());
    });
  }

  decremnt() {
    counter--;
    emit(CounterUpdatedState());
  }
}
