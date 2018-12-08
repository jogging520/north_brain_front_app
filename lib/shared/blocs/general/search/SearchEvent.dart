
abstract class SearchEvent {}

class WidgetInitialized extends SearchEvent {
  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialized;
}

class SearchButtonPressed extends SearchEvent {
  final String condition;

  SearchButtonPressed({this.condition});

  @override
  int get hashCode => condition.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is SearchButtonPressed &&
              condition == other.condition;
}