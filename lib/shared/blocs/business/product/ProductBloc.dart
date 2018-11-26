
import 'dart:math';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/product/Product.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

final Uint8List placeholderImages = new Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);

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
            (random.nextInt(800) + 200),
              ImageStyle.IMAGE_DEFAULT,
              ImageStyle.IMAGE_BACKGROUND
        )
    );
  }

}