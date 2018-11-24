
abstract class PolicyDetailEvent {}

class WidgetInitialed extends PolicyDetailEvent {

  final String id;

  WidgetInitialed(this.id);

  @override
  int get hashCode => this.id.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialed &&
              id == other.id;
}