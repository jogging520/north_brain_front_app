
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class TrailState {
  final String error;
  final bool isLoading;
  final List<String> trails;

  TrailState({
    @required this.error,
    @required this.isLoading,
    @required this.trails});

  factory TrailState.initial() {
    return TrailState(
        error: '',
        isLoading: false,
        trails: null
    );
  }

  factory TrailState.loading() {
    return TrailState(
        error: '',
        isLoading: true,
        trails: null
    );
  }

  factory TrailState.success(List<String> trails) {
    return TrailState(
        error: '',
        isLoading: false,
        trails: trails
    );
  }

  factory TrailState.failure(String error) {
    return TrailState(
        error: error,
        isLoading: false,
        trails: null
    );
  }
}