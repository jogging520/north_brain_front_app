
abstract class PolicyDetailEvent {}

class WidgetInitialized extends PolicyDetailEvent {

  final String id;

  WidgetInitialized(this.id);

  @override
  int get hashCode => this.id.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialized &&
              id == other.id;
}