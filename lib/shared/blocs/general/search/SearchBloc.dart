
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/search/Search.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';
import 'package:north_brain_front_app/shared/services/general/TrailService.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {

  final SearchService _searchService = SearchService();
  final TrailService _trailService = TrailService();

  @override
  SearchState get initialState => SearchState.initial();

  void onWidgetInitialized() {
    dispatch(WidgetInitialized());
  }

  void onSearchButtonPressed(String condition) {
    dispatch(
      SearchButtonPressed(condition: condition)
    );
  }

  @override
  Stream<SearchState> mapEventToState(SearchState state, SearchEvent event) async* {
    if (event is WidgetInitialized) {
      yield SearchState.loading();

      List<String> originalTrails = await _queryTrails();

      //剔重
      List<String> trails = originalTrails.toSet().toList();

      if (trails.length > GeneralConstants.CONSTANT_SEARCH_SELF_LIST_LENGTH) {
        trails.removeRange(GeneralConstants.CONSTANT_SEARCH_SELF_LIST_LENGTH, trails.length);
      }

      yield SearchState.success(state.summaries, trails);
    }

    if (event is SearchButtonPressed) {
      yield SearchState.loading();

      List<String> trails = state.trails;
      List<Summary> summaries = await _querySummaries(event.condition);

      if (!trails.contains(event.condition)) {
        trails.insert(0, event.condition);

        if (trails.length > GeneralConstants.CONSTANT_SEARCH_SELF_LIST_LENGTH) {
          trails.removeRange(GeneralConstants.CONSTANT_SEARCH_SELF_LIST_LENGTH, trails.length);
        }

        await _saveTrails(trails);
      }

      if (summaries != null) {
        yield SearchState.success(summaries, trails);
      } else {
        yield SearchState.failure('没有查询到相关内容');
      }
    }
  }

  Future<List<Summary>> _querySummaries(String condition) async {
    List<Summary> summaries = [];

    _searchService.querySummaries(conditions: {'conditon': condition})
        .asStream()
        .expand((summaries) => summaries)
        .listen((summary) => summaries.add(summary));

    return summaries;
  }

  Future<List<String>> _queryTrails() async {
    return _trailService.queryTrails();
  }

  Future<void> _saveTrails(List<String> trails) async {
    await _trailService.saveTrails(trails);
  }
}