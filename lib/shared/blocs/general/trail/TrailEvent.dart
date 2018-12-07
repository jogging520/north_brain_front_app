
abstract class TrailEvent {}

class WidgetInitialized extends TrailEvent {
  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialized;
}

class SearchButtonPressed extends TrailEvent {
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