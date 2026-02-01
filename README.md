# Flutter Tutorial Project

A comprehensive learning project focused on mastering Flutter development, Dart programming, and mobile UI/UX principles. This repository serves as a hands-on guide for common Flutter modules and assignments.

## 🚀 Features

* **Dynamic UI with Dashboard**: A central `DashboardPage` featuring a `BottomNavigationBar` for high-level navigation.
* **Multi-Tab Layout**: A `MorePage` implementation using `DefaultTabController` and `TabBarView` to organize content.
* **Explicit Animations**: Custom size and fade transitions built with `AnimationController` and `Tween`.
* **Lottie Integration**: Smooth, vector-based animations using the Lottie framework for a professional feel.
* **List Handling**: Efficient rendering of data using `ListView.builder` and custom `Movie` data models.
* **Scroll Management**: Implementation of `SingleChildScrollView` and vertical/horizontal scrolling layouts.

## 🛠️ Tech Stack

* **Framework**: [Flutter](https://flutter.dev/)
* **Language**: [Dart](https://dart.dev/)
* **Key Dependencies**:
    * `lottie`: For JSON-based vector animations.
    * `cached_network_image`: For optimized network image handling and caching.

## 📁 Project Structure

```text
lib/
├── modules/         # Data models and logic (e.g., Movie class)
├── pages/           # Screen implementations
│   ├── animationPage.dart  # Explicit animation examples
│   ├── dashboardPage.dart  # Main entry with BottomNav
│   ├── imagesPage.dart     # Network and Asset image handling
│   ├── lottiePage.dart     # Lottie animation implementation
│   ├── morePage.dart       # TabBar and TabBarView setup
│   └── moviesPage.dart     # ListViews and ListTiles
└── constant.dart    # App constants and URL definitions
