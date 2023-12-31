import 'package:flutter/material.dart';
import 'package:fresherfoods/src/Features/Onboarding/presentation/pages/autentication_page/password_forgotten.dart';
import 'package:fresherfoods/src/Features/meals/presentation/home_page.dart';
import 'package:fresherfoods/ui/bookmarks_page.dart';
import 'package:fresherfoods/src/Features/upload_items/presentation/camera_page.dart';
import 'package:fresherfoods/ui/conditions_page.dart';
import 'package:fresherfoods/ui/favorites_page.dart';
import 'package:fresherfoods/ui/gallery_list_page.dart';
import 'package:fresherfoods/ui/gallery_page.dart';
import 'package:fresherfoods/ui/groups_page.dart';
import 'package:fresherfoods/ui/logout_page.dart';
//import 'package:fresherfoods/ui/logout_page.dart';
import 'package:fresherfoods/ui/notification_page.dart';
import 'package:fresherfoods/ui/profile_page.dart';
import 'package:fresherfoods/ui/settings_page.dart';
import 'package:fresherfoods/ui/share_post_page.dart';
import 'package:fresherfoods/ui/support_page.dart';

import 'src/Features/Onboarding/presentation/pages/autentication_page/login.dart';
import 'src/Features/Onboarding/presentation/pages/autentication_page/register_page.dart';

import 'src/Features/Onboarding/presentation/pages/welcomepage.dart';
import 'ui/search_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get passwordforgotten => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            appBarTheme: const AppBarTheme(color: Colors.blueAccent)),
        themeMode: ThemeMode.system,
        title: "Homepage",
        initialRoute: '/welcomepage',
        routes: {
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/homepage': (context) => const HomePage(),
          '/camerapage': (context) => const CameraPage(),
          '/searchpage': (context) => const SearchPage(),
          '/notification': (context) => const NotificationPage(),
          '/welcomepage': (context) => const WelcomePage(),
          '/profilepage': (context) => const ProfilePage(),
          '/logoutpage': (context) => const LogoutPage(),
          '/bookmarkspage': (context) => const BookmarksPage(),
          '/favoritespage': (context) => const FavoritesPage(),
          '/groupspage': (context) => const GroupsPage(),
          '/settingspage': (context) => const SettingsPage(),
          '/supportpage': (context) => const SupportPage(),
          '/gallerylistpage': (context) => const GalleryListPage(),
          '/gallerypage': (context) => const GalleryPage(),
          '/sharepostpage': (context) => const SharePostPage(),
          '/passwordforgotten': (context) => const PasswordForgottenPage(),
          '/conditionspage': (context) => const ConditionsPage(),
        });
  }
}
