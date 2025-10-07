import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/Data/ConstData.dart';
import 'package:myapp/Model/ShoeModel.dart';

class Database {
  static Database? _instance;
  static Box<ShoeModel>? _inventoryDb;
  static Box<ShoeModel>? _cartDb;
  static Box? _cartTotal;

  Database._();

  static Future<Database> get getInstance async {
    if (_instance == null) {
      await _initDb();
      _instance = Database._();
    }
    return _instance!;
  }

  static Future<void> _initDb() async {
    _inventoryDb = Hive.box("inventory");
    _cartDb = Hive.box("cart");
    _cartTotal = Hive.box("cartTotal");

    if (_inventoryDb!.isEmpty) {
      await _inventoryDb!.addAll(ConstData.pull);
      _cartTotal!.put("productTotal", 0.0);
    }
  }

  /* ------------------------------------------------------------------------ */

  List<ShoeModel>? _inventoryList;

  List<ShoeModel> get getInventory {
    _inventoryList ??= _inventoryDb!.values.toList();
    return _inventoryList!;
  }

  int get getInventoryLength => _inventoryDb!.length;

  int get getCartLength => _cartDb!.length;
  ShoeModel getShoeModelAt(int index) => _cartDb!.getAt(index)!;

  Future<void> addProduct(ShoeModel product) async {
    await _cartDb!.add(ShoeModel.generateNewOneFrom(product));

    String priceString = product.getPrice;
    double total = double.parse(priceString.substring(2, priceString.length));
    total += _cartTotal!.get("productTotal");
    _cartTotal!.put("productTotal", total.abs());
  }

  Future<void> removeProduct(ShoeModel product) async {
    await product.delete();

    String priceString = product.getPrice;
    double total = _cartTotal!.get("productTotal");
    total -= double.parse(priceString.substring(2, priceString.length));
    _cartTotal!.put("productTotal", total.abs());
  }

  double get getCartTotal => _cartTotal!.get("productTotal");
}
