
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/trail/Trail.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class TrailBloc extends Bloc<TrailEvent, TrailState> {
  final TrailService _trailService = TrailService();

  @override
  TrailState get initialState => TrailState.initial();

  void onWidgetInitialized() {
    dispatch(WidgetInitialized());
  }

  void onSearchButtonPressed(String condition) {
    dispatch(
        SearchButtonPressed(condition: condition)
    );
  }

  @override
  Stream<TrailState> mapEventToState(TrailState state, TrailEvent event) async* {
    if (event is WidgetInitialized) {
      yield TrailState.loading();

      List<String> trails = await _queryTrails();

      yield TrailState.success(trails);
    }

    if (event is SearchButtonPressed) {
      yield TrailState.loading();

      List<String> trails = state.trails;
      if (!trails.contains(event.condition)) {
        trails.insert(0, event.condition);
      }

      yield TrailState.success(trails);
    }
  }

  Future<List<String>> _queryTrails() async {
    return _trailService.queryTrails();
  }
}