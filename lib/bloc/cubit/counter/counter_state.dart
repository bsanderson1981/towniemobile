import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class CounterCubitState extends Equatable {
  final int dozcount;
  final int singcount;
  final int totalbagels;

  const CounterCubitState({this.dozcount, this.singcount, this.totalbagels});

  @override
  List<Object> get props => [
        dozcount,
        singcount,
        totalbagels,
      ];
}

class CounterCubitInitial extends CounterCubitState {
  const CounterCubitInitial({int dozcount, int singcount, int totalbagels})
      : super(dozcount: dozcount, singcount: singcount, totalbagels: totalbagels);
}

class CounterCubitIncreased extends CounterCubitState {
  const CounterCubitIncreased({int dozcount, int singcount, int totalbagels})
      : super(dozcount: dozcount, singcount: singcount, totalbagels: totalbagels);
}

class CounterCubitDecreased extends CounterCubitState {
  const CounterCubitDecreased({int dozcount, int singcount, int totalbagels})
      : super(dozcount: dozcount, singcount: singcount, totalbagels: totalbagels);
}



// Without Equitable tests will fail
// @immutable
// abstract class CounterCubitState {
//   final String action;
//   final int count;

//   const CounterCubitState({this.action, this.count});
// }

// class CounterCubitInitial extends CounterCubitState {
//   const CounterCubitInitial({String action, int count})
//       : super(action: action, count: count);
// }

// class CounterCubitIncreased extends CounterCubitState {
//   const CounterCubitIncreased({String action, int count})
//       : super(action: action, count: count);
// }

// class CounterCubitDecreased extends CounterCubitState {
//   const CounterCubitDecreased({String action, int count})
//       : super(action: action, count: count);
// }
