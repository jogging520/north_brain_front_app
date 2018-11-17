
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/product/Product.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productService = ProductService();

  @override
  ProductState get initialState => ProductState.initial();

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
        yield ProductState.failure();
      }
    }
  }

  Future<List<Product>> _queryProducts(String type, String name) {
    return this._productService.queryProducts(type, name);
  }

}