
abstract class TrailEvent {}

class WidgetInitialized extends TrailEvent {
  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialized;
}
