
import 'package:meta/meta.dart';

class AuthenticationState {
  final bool isInitializing;
  final bool isLoading;
  final bool isAuthenticated;

  const AuthenticationState({
    @required this.isInitializing,
    @required this.isLoading,
    @required this.isAuthenticated});

  factory AuthenticationState.initializing() {
    return AuthenticationState(
      isInitializing: true,
      isLoading: false,
      isAuthenticated: false
    );
  }

  factory AuthenticationState.authenticated() {
    return AuthenticationState(
      isInitializing: false,
      isLoading: false,
      isAuthenticated: true
    );
  }

  factory AuthenticationState.unauthenticated() {
    return AuthenticationState(
        isInitializing: false,
        isLoading: false,
        isAuthenticated: false
    );
  }

  AuthenticationState copyWith({
    bool isInitializing,
    bool isLoading,
    bool isAuthenticated}) {
    return AuthenticationState(
      isInitializing: isInitializing ?? this.isInitializing,
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated
    );
  }

  @override
  bool operator ==(
      Object other
      ) => 
      identical(this, other) ||
      other is AuthenticationState &&
        runtimeType == other.runtimeType &&
          isInitializing == other.isInitializing &&
          isLoading == other.isLoading &&
          isAuthenticated == other.isAuthenticated;

  @override
  int get hashCode =>
      isInitializing.hashCode ^ isLoading.hashCode ^ isAuthenticated.hashCode;

  @override
  String toString() =>
      'AuthenticationState { isInitializing: $isInitializing, isLoading: $isLoading, isAuthenticated: $isAuthenticated }';

}