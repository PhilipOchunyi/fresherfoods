import 'package:flutter/material.dart';
import 'package:fresherfoods/ui/bookmarks_page.dart';
import 'package:fresherfoods/ui/favorites_page.dart';
import 'package:fresherfoods/ui/groups_page.dart';
import 'package:fresherfoods/ui/profile_page.dart';
import 'package:fresherfoods/ui/support_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});
  final indexClicked = 0;

  final padding = const EdgeInsets.symmetric(horizontal: 20.0);

  @override
  Widget build(BuildContext context) {
    final name = 'Max Muster';
    final email = 'maxmuster@web.de';
    String headerImage = 'assets/images/profile.jpg';

    return Drawer(
      child: Material(
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: name,
              image: headerImage,
              email: email,
              onClicked: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ));
              },
              backgroundcolor: Colors.blueAccent,
            ),
            const SizedBox(height: 0),
            const Divider(
                color: Colors.blueGrey, indent: 20.0, endIndent: 20.0),
            const SizedBox(height: 0),
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  buildMenuItem(
                    text: 'Profile',
                    icon: Icons.person,
                    onClicked: () => selectedItem(context, 0),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Favorites',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Bookmarks',
                    icon: Icons.bookmark,
                    onClicked: () => selectedItem(context, 2),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Groups',
                    icon: Icons.groups,
                    onClicked: () => selectedItem(context, 3),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Divider(
                color: Colors.blueGrey, indent: 20.0, endIndent: 20.0),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  buildMenuItem(
                    text: 'Support',
                    icon: Icons.support,
                    onClicked: () => selectedItem(context, 4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildHeader({
    required String name,
    required String image,
    required String email,
    required VoidCallback onClicked,
    required MaterialAccentColor backgroundcolor,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 80.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
                radius: 25.0,
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      email,
                      style: const TextStyle(
                          fontSize: 10, color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.blueAccent;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    hoverColor: Colors.amberAccent,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.pop(context);
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const FavoritesPage(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const BookmarksPage(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const GroupsPage(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const SupportPage(),
      ));
      break;

    default:
  }
}
