class CounterBlocState {}

class CounterInittial extends CounterBlocState {}

class CounterUpdatedState extends CounterBlocState {
  final int counter;

  CounterUpdatedState({required this.counter});
}

class CounterResetState extends CounterBlocState {}

class CounterLoadingState extends CounterBlocState {}

// class LoadingState extends CounterBlocState {}

// class SuccessLoadingtState extends CounterBlocState {}

// class ErrorLoadingState extends CounterBlocState {}
