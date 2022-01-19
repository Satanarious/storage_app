import 'package:flutter/material.dart';
import 'package:storage_app/screens/files_screen.dart';
import 'package:storage_app/screens/starred_screen.dart';
import 'package:storage_app/screens/upload_screen.dart';
import 'home_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedTabIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const FilesScreen(),
    const StarredScreen(),
    const UploadScreen(),
  ];

  BottomNavigationBarItem createNavBarItem(String label, IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
        ),
        label: label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTabIndex],
      bottomNavigationBar: Container(
        height: 60,
        margin: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 22,
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).primaryColor),
            currentIndex: _selectedTabIndex,
            onTap: (index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
            items: [
              createNavBarItem('Home', Icons.home_outlined),
              createNavBarItem('Files', Icons.folder_open),
              createNavBarItem('Starred', Icons.star_border),
              createNavBarItem('Upload', Icons.cloud_upload_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
