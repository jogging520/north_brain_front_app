
abstract class TradeEvent {}

class WidgetInitialed extends TradeEvent {

  WidgetInitialed();

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialed;
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