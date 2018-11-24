
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class PolicyDetailState {
  final String error;
  final bool isLoading;
  final Policy policy;

  PolicyDetailState({
    @required this.error,
    @required this.isLoading,
    @required this.policy});

  factory PolicyDetailState.initial() {
    return PolicyDetailState(
        error: '',
        isLoading: false,
        policy: null
    );
  }

  factory PolicyDetailState.loading() {
    return PolicyDetailState(
        error: '',
        isLoading: true,
        policy: null
    );
  }

  factory PolicyDetailState.success(Policy policy) {
    return PolicyDetailState(
        error: '',
        isLoading: false,
        policy: policy
    );
  }

  factory PolicyDetailState.failure(String error) {
    return PolicyDetailState(
        error: error,
        isLoading: false,
        policy: null
    );
  }
}