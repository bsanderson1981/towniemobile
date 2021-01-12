part of 'dozcounter_cubit.dart';

@immutable
abstract class DozcounterState {
  const DozcounterState();
}

class DozcounterInitial extends DozcounterState {
  const DozcounterInitial();
}


class DozcounterLoading extends DozcounterState {
  const DozcounterLoading();
}


class DozcounterLoaded extends DozcounterState {
  final 
  const DozcounterLoaded();
}

