
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class SearchState {
  final String error;
  final bool isLoading;
  final bool isSearchButtonEnabled;
  final List<Summary> summaries;

  SearchState({
    @required this.error,
    @required this.isLoading,
    @required this.isSearchButtonEnabled,
    @required this.summaries});

  factory SearchState.initial() {
    return SearchState(
        error: '',
        isLoading: false,
        isSearchButtonEnabled: true,
        summaries: null
    );
  }

  factory SearchState.loading() {
    return SearchState(
        error: '',
        isLoading: true,
        isSearchButtonEnabled: false,
        summaries: null
    );
  }

  factory SearchState.success(List<Summary> summaries) {
    return SearchState(
        error: '',
        isLoading: false,
        isSearchButtonEnabled: true,
        summaries: summaries
    );
  }

  factory SearchState.failure(String error) {
    return SearchState(
        error: error,
        isLoading: false,
        isSearchButtonEnabled: true,
        summaries: null
    );
  }
}