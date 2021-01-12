import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dozcounter_state.dart';

class DozcounterCubit extends Cubit<DozcounterState> {
  DozcounterCubit() : super(DozcounterInitial());
}
