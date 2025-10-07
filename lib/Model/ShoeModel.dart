import 'package:hive/hive.dart';
part 'ShoeModel.g.dart';

@HiveType(typeId: 0)
class ShoeModel extends HiveObject {
  @HiveField(0)
  final String _imageUrl;
  @HiveField(1)
  final String _name;
  @HiveField(2)
  final String _discription;
  @HiveField(3)
  final double _prince;

  ShoeModel(this._imageUrl, this._name, this._discription, this._prince);
  static ShoeModel generateNewOneFrom(ShoeModel model) {
    return new ShoeModel(
      model._imageUrl,
      model._name,
      model._discription,
      model._prince,
    );
  }

  String get getURL => this._imageUrl;
  String get getName => this._name;
  String get getDiscription => this._discription;
  String get getPrice => "\$ ${this._prince.toStringAsFixed(2)}";
}
