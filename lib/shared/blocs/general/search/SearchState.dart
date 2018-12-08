
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class SearchState {
  final String error;
  final bool isLoading;
  final bool isSearchButtonEnabled;
  final List<Summary> summaries;
  final List<String> trails;

  SearchState({
    @required this.error,
    @required this.isLoading,
    @required this.isSearchButtonEnabled,
    @required this.summaries,
    @required this.trails});

  factory SearchState.initial() {
    return SearchState(
      error: '',
      isLoading: false,
      isSearchButtonEnabled: true,
      summaries: null,
      trails: null,
    );
  }

  factory SearchState.loading() {
    return SearchState(
      error: '',
      isLoading: true,
      isSearchButtonEnabled: false,
      summaries: null,
      trails: null
    );
  }

  factory SearchState.success(List<Summary> summaries, List<String> trails) {
    return SearchState(
      error: '',
      isLoading: false,
      isSearchButtonEnabled: true,
      summaries: summaries,
      trails: trails,
    );
  }

  factory SearchState.failure(String error) {
    return SearchState(
      error: error,
      isLoading: false,
      isSearchButtonEnabled: true,
      summaries: null,
      trails: null,
    );
  }
}