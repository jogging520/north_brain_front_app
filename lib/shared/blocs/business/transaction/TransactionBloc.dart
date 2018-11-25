
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/transaction/Transaction.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {

  @override
  TransactionState get initialState => TransactionState.initial();

  void onBottomSheetOpened() {
    dispatch(BottomSheetOpened());
  }

  void onBottomSheetClosed() {
    dispatch(BottomSheetClosed());
  }

  @override
  Stream<TransactionState> mapEventToState(TransactionState state, TransactionEvent event) async* {
    if (event is BottomSheetOpened) {
      yield TransactionState.open();
    }

    if (event is BottomSheetClosed) {
      yield TransactionState.close();
    }
  }

}