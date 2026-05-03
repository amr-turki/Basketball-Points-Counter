import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterTeamBStates());

  int TeamA = 0;
  int TeamB = 0;
  void Counter(String Team, int value) {
    if (Team == 'A') {
      TeamA += value;
      emit(CounterTeamAStates());
    } else if (Team == 'B') {
      TeamB += value;
      emit(CounterTeamBStates());
    }
  }
}
