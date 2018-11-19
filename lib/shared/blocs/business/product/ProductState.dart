
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class ProductState {
  final String error;
  final bool isLoading;
  final List<Product> products;

  ProductState({
    @required this.error,
    @required this.isLoading,
    @required this.products});

  factory ProductState.initial(List<Product> products) {
    return ProductState(
      error: '',
      isLoading: false,
      products: products
    );
  }

  factory ProductState.loading() {
    return ProductState(
        error: '',
        isLoading: true,
        products: null
    );
  }

  factory ProductState.success(List<Product> products) {
    return ProductState(
        error: '',
        isLoading: false,
        products: products
    );
  }

  factory ProductState.failure(String error) {
    return ProductState(
        error: error,
        isLoading: false,
        products: null
    );
  }

}