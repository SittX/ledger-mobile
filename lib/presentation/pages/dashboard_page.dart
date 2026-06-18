import 'package:flutter/material.dart';
import 'package:ledger_mobile/core/constants/navigation_constants.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.title});
  final String title;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedPageIndex = 0;

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: PageMap.getPages()[_selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: NavigationEnum.values
            .map(
              (element) => NavigationDestination(
                label: element.label,
                icon: Icon(element.icon),
              ),
            )
            .toList(),
        selectedIndex: _selectedPageIndex,
        onDestinationSelected: _onDestinationSelected,
      ),
    );
  }
}
