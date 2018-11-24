
abstract class MenuEvent {}

class WidgetInitialed extends MenuEvent {

  WidgetInitialed();

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is WidgetInitialed;
}