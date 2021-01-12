import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_example/bloc/cubit/counter/counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit()
      : super(CounterCubitInitial(dozcount: 0, singcount: 0, totalbagels: 0));

  void increment() {
  

    emit(CounterCubitIncreased(
      totalbagels: (state.totalbagels + 1),
      dozcount: ((state.totalbagels +1) ~/ 13),
      singcount: ((state.totalbagels +1) % 13),
    ));
   
  }

  void decrement() {
    if (state.totalbagels == 0) {
    } else {
      emit(CounterCubitDecreased(
        totalbagels: (state.totalbagels - 1),
        dozcount: ((state.totalbagels -1) ~/ 13),
        singcount: ((state.totalbagels -1) % 13),
      ));
    }
  }
}
