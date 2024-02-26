import 'package:asebmarket/features/authentication/screens/login/login_form.dart';
import 'package:asebmarket/navigation_menu.dart';
import 'package:asebmarket/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const App());
}

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       themeMode: ThemeMode.system,
//       theme: TAppTheme.lightTheme,
//       darkTheme: TAppTheme.darkTheme,
//     );
//   }
// }
