# NikeApp - A Flutter E-commerce Application

## Description
Myapp is a modern Flutter e-commerce application designed to showcase products, manage a shopping cart, and provide a seamless user experience. It leverages local data storage using Hive for efficient offline capabilities and a custom Google-style navigation bar for intuitive navigation.

## Features
- Product display with detailed views
- Shopping cart functionality
- Local data persistence with Hive
- Intuitive navigation using `google_nav_bar`
- Error handling and robust routing
- Responsive UI for various screen sizes

## Tech Stack
- **Flutter**: UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Provider**: A simple yet powerful state management solution for Flutter.
- **Hive**: A fast, lightweight, and powerful NoSQL database for Flutter and Dart.
- **google_nav_bar**: A beautiful and customizable Google style navigation bar for Flutter.
- **cupertino_icons**: iOS-style icons for Flutter.

## Installation

To get a local copy up and running, follow these simple steps.

### Prerequisites
- Flutter SDK (version ^3.9.2 or later)
- Dart SDK (automatically included with Flutter SDK)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/myapp.git
   ```
2. Navigate to the project directory:
   ```bash
   cd myapp
   ```
3. Get dependencies:
   ```bash
   flutter pub get
   ```
4. Run the build_runner to generate Hive adapters:
   ```bash
   flutter packages pub run build_runner build --delete-conflicting-outputs
   ```

## Usage

To run the application on a connected device or emulator:

```bash
flutter run
```

## Project Structure

The project follows a clean and modular architecture:

```
lib/
├── Components/         # Reusable UI widgets (e.g., BottomNavBar, CartTile, ProductTile)
├── Data/               # Data models and database interactions (e.g., ConstData, Database)
├── Model/              # Application data models (e.g., ShoeModel)
├── Pages/              # Different screens/pages of the application (e.g., HomePage, CartPage, ShopPage)
├── util/               # Utility functions and route generation (e.g., RouteGenerator)
└── main.dart           # Main entry point of the application
```

## Assets

The application utilizes local assets for product images and logos:

- `assets/ShoeImages/`: Contains various shoe images for product display.
- `assets/Logos/`: Contains application logos (e.g., NikeLogo.png, ok.gif).

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.
