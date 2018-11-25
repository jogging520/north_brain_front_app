
abstract class TransactionEvent {}

class BottomSheetOpened extends TransactionEvent {}

class BottomSheetClosed extends TransactionEvent {}

class CommitButtonPressed extends TransactionEvent {
  final String condition;

  CommitButtonPressed({this.condition});

  @override
  int get hashCode => condition.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
          other is CommitButtonPressed &&
              condition == other.condition;
}