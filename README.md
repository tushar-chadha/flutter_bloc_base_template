<h1>Flutter BLoC Template</h1>
    <p>A clean and scalable Flutter project template using the BLoC (Business Logic Component) architecture.</p>
    
<h2>🚀 Features</h2>
    <ul>
        <li><strong>BLoC State Management</strong> - Follows a structured approach to handling state.</li>
        <li><strong>Separation of Concerns</strong> - Keeps UI, business logic, and data layers separate.</li>
        <li><strong>Scalable and Maintainable</strong> - Designed for large-scale applications.</li>
        <li><strong>Pre-configured Folder Structure</strong> - Organized directories for efficient development.</li>
        <li><strong>Dio for Networking</strong> - Easy API integration with error handling.</li>
        <li><strong>Flutter Lints</strong> - Enforces best coding practices.</li>
        <li><strong>Dependency Injection (get_it)</strong> - Manages dependencies efficiently.</li>
    </ul>
    
   <h2>📂 Folder Structure</h2>
    <pre>

├── app.dart
├── config
│   └── routes.dart
├── core
│   ├── constants.dart
│   ├── error
│   │   └── faliure.dart
│   ├── network
│   │   └── network.dart
│   ├── theme
│   │   └── app_colors.dart
│   └── utils
├── data
├── directory_structure.txt
├── main.dart
└── presentation
    ├── bloc
    │   ├── app_bloc.dart
    │   ├── app_event.dart
    │   └── app_state.dart
    └── pages
        └── home.dart

11 directories, 12 files
    </pre>
    
   <h2>🛠️ Installation</h2>
    <p>Clone the repository:</p>
    <pre>
git clone https://github.com/yourusername/flutter-bloc-template.git
    </pre>
    <p>Navigate to the project directory:</p>
    <pre>
cd flutter-bloc-template
    </pre>
    <p>Install dependencies:</p>
    <pre>
flutter pub get
    </pre>
    <p>Run the app:</p>
    <pre>
flutter run
    </pre>
    
  <h2>📝 Getting Started</h2>
    <ul>
        <li>Check out the <a href="https://bloclibrary.dev/">Flutter BLoC Documentation</a> to understand how BLoC works.</li>
        <li>Modify the existing BLoC logic in <code>logic/</code> to fit your application requirements.</li>
        <li>Create new screens inside <code>presentation/</code> and manage them using <code>BlocProvider</code>.</li>
        <li>Handle API calls in the <code>data/</code> layer and consume them in your BLoCs.</li>
    </ul>
        <h2>📝 Contributing</h2>
    <p>Contributions are welcome! Feel free to fork this repo and submit a pull request.</p>
    
  <h2>📜 License</h2>
    <p>This project is licensed under the MIT License - see the LICENSE file for details.</p>
    
  <p>Made with ❤️ using Flutter & BLoC</p>
