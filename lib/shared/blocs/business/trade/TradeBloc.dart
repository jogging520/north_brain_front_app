
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/trade/Trade.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';

class TradeBloc extends Bloc<TradeEvent, TradeState> {

  final TradeService _tradeService = TradeService();

  @override
  TradeState get initialState => TradeState.initial();

  void onWidgetInitialed() {
    dispatch(WidgetInitialed());
  }

  void onRefreshButtonPressed(Map<String, dynamic> conditions) {
    dispatch(RefreshButtonPressed(conditions: conditions));
  }

  @override
  Stream<TradeState> mapEventToState(TradeState state, TradeEvent event) async* {

    if (event is WidgetInitialed) {
      yield TradeState.loading();

      List<Trade> trades = await _queryTrades(conditions: null);

      if (trades != null) {
        yield TradeState.success(trades);
      } else {
        yield TradeState.failure('未查到任何交易数据');
      }
    }

    if (event is RefreshButtonPressed) {
      yield TradeState.loading();

      List<Trade> trades = await _queryTrades(conditions: event.conditions);

      if (trades != null) {
        yield TradeState.success(trades);
      } else {
        yield TradeState.failure('未查到任何交易数据');
      }
    }

  }

  Future<List<Trade>> _queryTrades({Map<String, dynamic> conditions}) async {
    List<Trade> trades = [];

    _tradeService.queryTrades(conditions: conditions)
        .asStream()
        .expand((trades) => trades)
        .listen((trade) => trades.add(trade));

    return trades;
  }
}
