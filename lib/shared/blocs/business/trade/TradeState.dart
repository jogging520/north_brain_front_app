
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class TradeState {
  final String error;
  final bool isLoading;
  final bool isRefreshButtonEnabled;
  final List<Trade> trades;

  TradeState({
    @required this.error,
    @required this.isLoading,
    @required this.isRefreshButtonEnabled,
    @required this.trades});

  factory TradeState.initial() {
    return TradeState(
        error: '',
        isLoading: false,
        isRefreshButtonEnabled: true,
        trades: null
    );
  }

  factory TradeState.loading() {
    return TradeState(
        error: '',
        isLoading: true,
        isRefreshButtonEnabled: false,
        trades: null
    );
  }

  factory TradeState.success(List<Trade> trades) {
    return TradeState(
        error: '',
        isLoading: false,
        isRefreshButtonEnabled: true,
        trades: trades
    );
  }

  factory TradeState.failure(String error) {
    return TradeState(
        error: error,
        isLoading: false,
        isRefreshButtonEnabled: true,
        trades: null
    );
  }
}