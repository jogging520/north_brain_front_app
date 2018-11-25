
abstract class MenuEvent {}

class WidgetInitialized extends MenuEvent {

  WidgetInitialized();

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialized;
}