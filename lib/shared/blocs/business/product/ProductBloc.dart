
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/product/Product.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productService = ProductService();

  @override
  ProductState get initialState => ProductState.initial(_initialProducts());

  void onSearchButtonPressed(String type, String name) {
    dispatch(
      SearchButtonPressed(
          type: type,
          name: name)
    );
  }

  @override
  Stream<ProductState> mapEventToState(ProductState state, ProductEvent event) async* {
    if (event is SearchButtonPressed) {
      yield ProductState.loading();

      try {
        List<Product> products = await _queryProducts(event.type, event.name);

        yield ProductState.success(products);
      } catch (error) {
        yield ProductState.failure(error.toString());
      }
    }
  }

  Future<List<Product>> _queryProducts(String type, String name) async {
    return await this._productService.queryProducts(type, name);
  }

  List<Product> _initialProducts() {
    Random random = Random();

    return List.generate(100,
            (i) => Product(
            (random.nextInt(1000) + 200).toString(),
            '谷物' + (random.nextInt(1000) + 200).toString(),
            'COMMON',
            (random.nextInt(500) + 200),
            (random.nextInt(800) + 200)
        )
    );
  }

}