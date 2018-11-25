
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class TransactionState {
  final String error;
  final bool isBottomSheetOpened;

  TransactionState({
    @required this.error,
    @required this.isBottomSheetOpened});

  factory TransactionState.initial() {
    return TransactionState(
      error: '',
      isBottomSheetOpened: false,
    );
  }

  factory TransactionState.open() {
    return TransactionState(
      error: '',
      isBottomSheetOpened: true,
    );
  }

  factory TransactionState.close() {
    return TransactionState(
      error: '',
      isBottomSheetOpened: false,
    );
  }
}