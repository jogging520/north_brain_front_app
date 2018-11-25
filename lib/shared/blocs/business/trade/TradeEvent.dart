
abstract class TradeEvent {}

class WidgetInitialized extends TradeEvent {

  WidgetInitialized();

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialized;
}


class RefreshButtonPressed extends TradeEvent {
  final Map<String, dynamic> conditions;

  RefreshButtonPressed({this.conditions});

  @override
  int get hashCode => conditions.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is RefreshButtonPressed &&
              conditions == other.conditions;
}