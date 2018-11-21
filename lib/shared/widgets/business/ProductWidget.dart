
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:north_brain_front_app/shared/blocs/business/product/Product.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';


class ProductWidget extends StatelessWidget {
  final ProductBloc _productBloc;

  const ProductWidget({
    Key key,
    @required ProductBloc productBloc}):
        _productBloc = productBloc,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductEvent, ProductState> (
      bloc: _productBloc,
      builder: (BuildContext context, ProductState productState) {
        if (_loadProductsSucceed(productState)) {
          print('加载成功');
//          CommonService.prompt(
//              context,
//              GeneralConstants.CONSTANT_COMMON_PROMPT_ERROR_TITLE,
//              '加载成功');
        }

        if (_loadProductsFailed(productState)) {
//          CommonService.prompt(
//              context,
//              GeneralConstants.CONSTANT_COMMON_PROMPT_ERROR_TITLE,
//              productState.error);
        }

        return _productsTile(productState);
      },
    );
  }

  Widget _productsTile(ProductState productState) {
    return StaggeredGridView.countBuilder(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => _productCard(productState.products[index]),
        staggeredTileBuilder: (index) => StaggeredTile.fit(2));
  }

  Widget _productCard(Product product) {
    return Card(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Center(
                child: FadeInImage.memoryNetwork(
                    placeholder: placeholderImages,
                    image: 'https://picsum.photos/${product.width}/${product.height}'),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: <Widget>[
                Text(product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(product.width.toString(),
                  style: const TextStyle(color: Colors.grey),
                ),
                Text(product.height.toString(),
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  bool _loadProductsFailed(ProductState productState) => productState.error.isNotEmpty;
  bool _loadProductsSucceed(ProductState productState) => productState.products != null;

}