# Student Mobile App — Weeks 1–3 Practical Project

Cross-platform Flutter application covering **Week 1**, **Week 2**, and **Week 3** assignments for Mobile Application Development.

## What This Project Covers

| Week | Assignment | Implemented Features |
|------|-----------|---------------------|
| **Week 1** | Hello World Flutter App | Custom title, background color, font size, button |
| **Week 2** | Mini Student Management App | Login, registration, SQLite storage, navigation |
| **Week 3** | Complete UI Prototype | 7 screens, forms, validation, modern Material 3 UI |

## Screens

1. **Welcome** — Week 1 Hello World screen
2. **Login** — User authentication with validation
3. **Register** — Account registration
4. **Dashboard** — Home with stats and quick actions
5. **Student List** — View all saved students (SQLite)
6. **Add Student** — Form with validation
7. **Profile** — User profile and logout
8. **About** — Project documentation summary

## Tech Stack

- **Flutter** + **Dart**
- **SQLite** (`sqflite`) — local student records
- **SharedPreferences** — login session
- **GoRouter** — navigation
- **Material 3** — modern UI theme

---

## STEP 1: Install Required Software

Install these tools on your Windows PC:

| # | Software | Download |
|---|----------|----------|
| 1 | **Android Studio** | https://developer.android.com/studio |
| 2 | **VS Code** (optional) | https://code.visualstudio.com/ |
| 3 | **Flutter SDK** | https://docs.flutter.dev/get-started/install/windows |
| 4 | **Git** | https://git-scm.com/download/win |
| 5 | **Java JDK 17** | Bundled with Android Studio |

### Flutter SDK Installation (Windows)

1. Download Flutter SDK zip from https://docs.flutter.dev/get-started/install/windows
2. Extract to `C:\src\flutter` (avoid spaces in path)
3. Add to PATH:
   - Press `Win + S` → search **Environment Variables**
   - Edit **Path** → Add: `C:\src\flutter\bin`
4. Open a **new** PowerShell window and verify:

```powershell
flutter --version
flutter doctor
```

### Android Studio Components

During Android Studio setup, install:
- Android SDK
- Android SDK Platform-Tools
- Android Emulator
- Android SDK Build-Tools

---

## STEP 2: Configure Development Environment

### Android Studio Setup

1. Open **Android Studio**
2. Go to **Tools → SDK Manager**
3. Install latest **Android SDK Platform** (API 34 or 35)
4. Go to **Tools → Device Manager**
5. Click **Create Virtual Device** → choose **Pixel 7** → download a system image → Finish
6. Start the emulator and confirm it boots

### Flutter Setup

```powershell
cd C:\Users\ROBERT2000\Projects\student_mobile_app
flutter doctor
flutter pub get
```

Fix any issues reported by `flutter doctor` (accept Android licenses with `flutter doctor --android-licenses`).

### VS Code Extensions (if using VS Code)

- Flutter
- Dart
- GitHub Copilot (optional)

---

## STEP 3: Run the Project in Android Studio

### Method A — Open and Run (Recommended)

1. **Open Android Studio**
2. Click **Open** (or File → Open)
3. Navigate to:
   ```
   C:\Users\ROBERT2000\Projects\student_mobile_app
   ```
4. Click **OK** — Android Studio detects it as a Flutter project
5. If prompted, install the **Flutter** and **Dart** plugins:
   - File → Settings → Plugins → search "Flutter" → Install (Dart installs automatically)
6. Wait for **pub get** to finish (status bar at bottom)
7. Select your **emulator** or connected phone in the device dropdown (top toolbar)
8. Click the green **Run ▶** button (or press `Shift + F10`)

### Method B — Run from Terminal

```powershell
cd C:\Users\ROBERT2000\Projects\student_mobile_app
flutter pub get
flutter run
```

### Method C — Run on a Physical Android Phone

1. Enable **Developer Options** on your phone
2. Enable **USB Debugging**
3. Connect via USB
4. Run `flutter devices` to confirm detection
5. Click **Run ▶** in Android Studio

### First-Time Project Setup

If Android Studio shows missing platform files, run this once in the project folder:

```powershell
flutter create . --project-name student_mobile_app
flutter pub get
```

This regenerates launcher icons and any missing platform files without overwriting your `lib/` code.

---

## How to Test the App

### Week 1 Features
1. Launch app → see **Welcome** screen with blue theme
2. Notice custom title **"Student Mobile App"**, large font, colored background
3. Tap **Get Started** button

### Week 2 Features
1. Tap **Register** → create username + password (min 4 chars)
2. **Login** with your credentials
3. Go to **Add Student** → fill form → **Save Student**
4. View saved records in **Student List**
5. Data persists locally (SQLite) after app restart

### Week 3 Features
1. Navigate between all 7 screens using buttons and bottom nav bar
2. Test form validation (empty fields, invalid email)
3. Test delete confirmation dialog on student list
4. Test logout from Profile or Dashboard

---

## Project Structure

```
student_mobile_app/
├── lib/
│   ├── main.dart                 # App entry + routing
│   ├── models/student.dart       # Student data model
│   ├── services/
│   │   ├── auth_service.dart     # Login/session (SharedPreferences)
│   │   └── database_service.dart # SQLite operations
│   ├── screens/                  # All UI screens
│   └── theme/app_theme.dart      # Colors, typography, Material 3
├── android/                      # Android platform config
├── test/                         # Widget tests
└── pubspec.yaml                  # Dependencies
```

---

## Build APK for Submission

```powershell
flutter build apk --release
```

APK location:
```
build\app\outputs\flutter-apk\app-release.apk
```

---

## Screenshots for Documentation

Capture these for your Word logbook:
- `flutter doctor` output (all green checkmarks)
- Android emulator running the Welcome screen
- Login and Registration screens
- Dashboard with student count
- Add Student form filled in
- Student List with records
- Bottom navigation on Profile screen
- Terminal showing `flutter run` success
- GitHub commit history (after pushing to GitHub)

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| `flutter` not recognized | Add `C:\src\flutter\bin` to PATH, restart terminal |
| No devices found | Start emulator in Device Manager or connect USB phone |
| Gradle build failed | Run `flutter clean` then `flutter pub get` |
| SDK licenses not accepted | Run `flutter doctor --android-licenses` |
| Plugin not found | Install Flutter plugin in Android Studio Settings → Plugins |

---

## License

Educational project for Mobile Application Development coursework.
