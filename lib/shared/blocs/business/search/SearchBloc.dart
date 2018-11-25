
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/search/Search.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {

  final SearchService _searchService = SearchService();

  @override
  SearchState get initialState => null;

  void onSearchButtonPressed(String condition) {
    dispatch(
      SearchButtonPressed(condition: condition)
    );
  }

  @override
  Stream<SearchState> mapEventToState(SearchState state, SearchEvent event) async* {
    if (event is SearchButtonPressed) {
      yield SearchState.loading();

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
}