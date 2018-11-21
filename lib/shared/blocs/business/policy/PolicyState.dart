
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class PolicyState {
  final String error;
  final bool isLoading;
  final List<Policy> policies;

  PolicyState({
    @required this.error,
    @required this.isLoading,
    @required this.policies});

  factory PolicyState.initial() {
    return PolicyState(
        error: '',
        isLoading: false,
        policies: null
    );
  }

  factory PolicyState.loading() {
    return PolicyState(
        error: '',
        isLoading: true,
        policies: null
    );
  }

  factory PolicyState.success(List<Policy> policies) {
    return PolicyState(
        error: '',
        isLoading: false,
        policies: policies
    );
  }

  factory PolicyState.failure(String error) {
    return PolicyState(
        error: error,
        isLoading: false,
        policies: null
    );
  }
}