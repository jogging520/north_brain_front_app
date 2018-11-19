
import 'package:meta/meta.dart';

abstract class ProductEvent {}

class SearchButtonPressed extends ProductEvent {
  final String type;
  final String name;

  SearchButtonPressed({@required this.type, @required this.name});

  @override
  int get hashCode => this.type.hashCode ^ this.name.hashCode;

  @override
  bool operator ==(other) =>
  identical(this, other) ||
  other is SearchButtonPressed &&
  type == other.type &&
  name == other.name;
}

