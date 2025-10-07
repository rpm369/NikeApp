import 'package:myapp/Model/ShoeModel.dart';

class ConstData {
  static List<ShoeModel> get pull {
    return [
      ShoeModel(
        "assets/ShoeImages/Shoe1.png",
        "Velocity Knit Racer",
        "A lightweight performance running shoe built for speed. Features a breathable Flyknit-style upper for a snug, sock-like fit and a responsive Zoom Air unit in the forefoot for explosive energy return. Ideal for both daily training and race day.",
        129.99,
      ),
      ShoeModel(
        "assets/ShoeImages/Shoe2.png",
        "Court Legacy Mid '85",
        "A bold, high-top sneaker with classic basketball heritage. This retro-inspired design features premium leather and suede overlays in a striking black and yellow colorway. Offers excellent ankle support and a durable rubber cupsole, perfect for making a statement on or off the court.",
        179.99,
      ),
      ShoeModel(
        "assets/ShoeImages/Shoe3.png",
        "Air Max Aurora V2",
        "Experience all-day comfort with a revolutionary full-length Max Air unit providing unparalleled cushioning. The vibrant gradient mesh upper and detailed traction outsole make this a versatile, eye-catching trainer for casual wear or light gym sessions.",
        119.99,
      ),
      ShoeModel(
        "assets/ShoeImages/Shoe4.png",
        "Hydro-Fuse Training Shoe",
        "Engineered for intense workouts, this shoe features a seamless, Hydro-Fuse™ upper with supportive synthetic overlays for a locked-down fit. Its visible dual-chamber Air unit in the heel offers maximum impact protection. The aggressive, multi-directional tread ensures superior grip.",
        149.99,
      ),
      ShoeModel(
        "assets/ShoeImages/Shoe5.png",
        "Galaxy XI (Black/White)",
        "An absolute icon, this sneaker blends high-end style with athletic history. It showcases a patent leather mudguard, translucent outsole, and a carbon fiber plate for stability. A highly sought-after model that defines classic sneaker culture.",
        249.99,
      ),
    ];
  }
}
