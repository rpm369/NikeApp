class ShoeModel {
  final String _imageUrl;
  final String _name;
  final String _discription;
  final double _prince;

  const ShoeModel(this._imageUrl, this._name, this._discription, this._prince);

  String get getURL => this._imageUrl;
  String get getName => this._name;
  String get getDiscription => this._discription;
  String get getPrice => "\$ ${this._prince.toStringAsFixed(2)}";
}
