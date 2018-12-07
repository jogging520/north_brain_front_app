
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/search/Search.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';
import 'package:north_brain_front_app/shared/services/general/TrailService.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {

  final SearchService _searchService = SearchService();
  final TrailService _trailService = TrailService();

  @override
  SearchState get initialState => SearchState.initial();

  void onSearchButtonPressed(String condition) {
    dispatch(
      SearchButtonPressed(condition: condition)
    );
  }

  @override
  Stream<SearchState> mapEventToState(SearchState state, SearchEvent event) async* {
    if (event is SearchButtonPressed) {
      yield SearchState.loading();

      await _saveTrails(event.condition);
      List<Summary> summaries = await _querySummaries(event.condition);

      if (summaries != null) {
        yield SearchState.success(summaries);
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

  Future<void> _saveTrails(String trail) async {
    await _trailService.saveTrails(trail);
  }
}