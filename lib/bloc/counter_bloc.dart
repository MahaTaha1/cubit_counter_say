import 'package:cubit_counter_say/bloc/counter_event.dart';
import 'package:cubit_counter_say/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterBlocState> {
  CounterBloc() : super(CounterInittial()) {
    on((event, emit) async{
      if (event is IncrementEvent) {
       await increment(emit);
      } else if (event is DecrementEvent) {
       await decremnt(emit);
      }
    });
  }






  int counter = 0;

  increment(Emitter<CounterBlocState>emit) async{
    emit(CounterLoadingState());
   await Future.delayed(Duration(seconds: 1), () {
      counter++;
      emit(CounterUpdatedState( counter: counter));
    });
  }

  decremnt( Emitter<CounterBlocState> emit )async {
    counter--;
    emit(CounterUpdatedState(counter: counter));
  }




}
