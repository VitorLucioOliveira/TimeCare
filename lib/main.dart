import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timecare/firebase_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:timecare/test_screen.dart';
import 'medicine_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeCare - Lembretes de Medicamentos',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: CupertinoColors.systemBlue,
          secondary: CupertinoColors.systemTeal,
          surface: CupertinoColors.systemBackground,
          background: CupertinoColors.systemGroupedBackground,
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: CupertinoColors.systemBackground,
          foregroundColor: CupertinoColors.label,
        ),
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            activeIcon: Icon(CupertinoIcons.heart_fill),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_list),
            activeIcon: Icon(CupertinoIcons.square_list_fill),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            activeIcon: Icon(CupertinoIcons.person_fill),
          ),
        ],
        backgroundColor: CupertinoColors.systemBackground,
        activeColor: CupertinoColors.systemBlue,
        inactiveColor: CupertinoColors.systemGrey,
        border: const Border(
          top: BorderSide(
            color: CupertinoColors.systemGrey5,
            width: 0.5,
          ),
        ),
        iconSize: 24,
        currentIndex: 0,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return const MedicineScreen();
              case 1:
                return const TestScreen();
              case 2:
                return const Center(
                  child: Text('Perfil em desenvolvimento'),
                );
              default:
                return const Center(
                  child: Text('Página não encontrada'),
                );
            }
          },
        );
      },
    );
  }
}