# 📱 Flutter Portfolio & Admin Dashboard

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Firebase" />
  <img src="https://img.shields.io/badge/BLoC-525C68?style=for-the-badge&logo=bloc&logoColor=white" alt="BLoC" />
  <img src="https://img.shields.io/badge/Clean_Architecture-4CAF50?style=for-the-badge" alt="Clean Architecture" />
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git" />
  <br>
  <a href="https://ahmedzamzam.netlify.app/"><img src="https://img.shields.io/badge/Live%20Demo-Netlify-00C7B7?style=for-the-badge&logo=netlify&logoColor=white" alt="Live Demo" /></a>
</p>

A premium, modern **Portfolio and Admin Dashboard Application** built with **Flutter**, following strict **Clean Architecture** patterns, and backed by **Firebase Firestore**. The application is designed to dynamically load and display professional information (profile, skills, projects, certificates, experiences) while providing a fully-featured, secure admin dashboard to edit, manage, and update the data in real-time.

**🔗 Live Demo:** [ahmedzamzam.netlify.app](https://ahmedzamzam.netlify.app/)

---

## ✨ Features

- **Dynamic Data Seeding**: Automatic database seeder to populate Firestore with initial credentials, projects, and certifications.
- **Dynamic Profile & Portfolio**: Displays professional bio, badges, projects, certificates, and skills dynamically loaded from Firebase Firestore.
- **Secure Admin Panel**: Integrated administrator panel to add, edit, or delete items on the fly.
- **Robust Authentication**: Firebase Authentication implementation for secure login to the admin workspace.
- **State Management**: Scalable and predictable state management powered by **Flutter BLoC / Cubit**.
- **Dynamic Theme Mode**: Smooth switching between beautiful Light and Dark themes (managed by `ThemeCubit`).
- **Clean Architecture & Dependency Injection**: Modular structure separating Data, Domain, and Presentation layers, coupled with **GetIt** for dependency injection.

---

## 🛠️ Tech Stack & Key Packages

* **Framework:** [Flutter](https://flutter.dev) (Dart)
* **State Management:** [flutter_bloc](https://pub.dev/packages/flutter_bloc)
* **Navigation:** [go_router](https://pub.dev/packages/go_router)
* **Dependency Injection:** [get_it](https://pub.dev/packages/get_it)
* **Backend Services:** 
  * `firebase_core` & `cloud_firestore` (Data storage)
  * `firebase_auth` (Secure admin authentication)
* **Iconography & Styling:** Custom premium styling with dynamic themes.

---

## 🏗️ Architecture & Directory Structure

The project strictly adheres to **Clean Architecture** combined with **Feature-first organization**, making the codebase highly maintainable, testable, and scalable.

```
lib/
├── core/
│   ├── di/             # Dependency Injection setup (GetIt)
│   ├── router/         # Navigation routing configurations (GoRouter)
│   ├── theme/          # Theme styling definitions (AppTheme & ThemeCubit)
│   └── utils/          # Database seeding and utility classes
├── features/
│   ├── admin/          # Admin panel presentation & management business logic
│   ├── auth/           # Login & authorization controls for the dashboard
│   └── portfolio/      # Core portfolio features
│       ├── data/       # Data source contracts, Firestore models, repositories
│       ├── domain/     # Domain entities & usecase definitions
│       └── presentation/ # Widgets, Cubits, and pages (e.g., PortfolioPage)
├── firebase_options.dart # Firebase platform configuration
└── main.dart           # App entry point
```

---

## 🚀 Getting Started

### 📋 Prerequisites

Before running the application, make sure you have:
1. [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your system.
2. A Firebase project configured.
3. Git command line utility.

### ⚙️ Firebase Setup

1. Create a project in the [Firebase Console](https://console.firebase.google.com/).
2. Enable **Cloud Firestore** and **Firebase Authentication** (Email/Password provider).
3. Set up Firestore Security Rules to allow read access to everyone, but write access only to authenticated users (admins).
4. Run `flutterfire configure` to generate/update the `lib/firebase_options.dart` file.

### 📥 Installation & Running

1. **Clone the repository:**
   ```bash
   git clone https://github.com/AHMEDZMZA/portfolio.git
   cd portfolio
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Seeding the Database:**
   The project contains a built-in database seeder (`lib/core/utils/db_seeder.dart`) which automatically uploads the profile data, skills, projects, and certificates to Firestore. It runs on the first app start:
   ```dart
   // inside lib/main.dart
   await seedDatabase(); // Runs on startup
   ```
   *Note: After the first run, you can comment this call out in `lib/main.dart`.*

4. **Run the App:**
   ```bash
   flutter run
   ```

---

## 👤 Developer Profile: Ahmed Kamal Zamzam

* **Title:** Junior Flutter Developer | Mobile Application Developer
* **Bio:** 2026 Computer Science and Information Technology Graduate passionate about building modern, responsive, and clean mobile applications. Specialized in Flutter, Clean Architecture, BLoC, and Firebase integrations.
* **Email:** [ahmedzamzam3112004@gmail.com](mailto:ahmedzamzam3112004@gmail.com)
* **Phone:** +20 155 454 8893
* **LinkedIn:** [Ahmed Zamzam](https://www.linkedin.com/in/ahmed-zamzam-986b912a5)
* **GitHub:** [@AHMEDZMZA](https://github.com/AHMEDZMZA)

---

## 📂 Projects Featured

1. **GraduatChildMonitor** 🧩
   * *Description:* A graduation project designed to support children with Autism Spectrum Disorder (ASD). Helps parents track daily activities, progress, and communicate with specialists. Follows clean architecture.
2. **HungryApp** 🍔
   * *Description:* A modern food ordering application featuring meal browsing, menu details, favorites management, and responsive interfaces.
3. **BooklyApp** 📚
   * *Description:* A Flutter application for discovering and exploring books using REST APIs, featuring search and detailed views.
4. **WeatherApp** ☀️
   * *Description:* Real-time weather forecasting application providing current conditions, temperature, humidity, and speed using external APIs.
5. **News-App** 📰
   * *Description:* Clean-architecture based news application fetching and categorizing articles using REST APIs.
