import 'package:myapp/Model/ShoeModel.dart';

class CartModel {
  static List<ShoeModel>? _cart;
  static CartModel? _instance;
  CartModel._();

  static CartModel get getInstance {
    _cart ??= [];
    _instance ??= CartModel._();
    return _instance!;
  }

  void addProduct(ShoeModel model) {
    _cart!.add(model);
  }

  void removeProduct(ShoeModel model) {
    _cart!.remove(model);
  }

  List<ShoeModel> get getCart => _cart!;
}
