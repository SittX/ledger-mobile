import 'package:flutter/material.dart';
import 'package:ledger_mobile/presentation/pages/account_list_page.dart';
import 'package:ledger_mobile/presentation/pages/home_page.dart';
import 'package:ledger_mobile/presentation/pages/settings_page.dart';
import 'package:ledger_mobile/presentation/pages/transaction_list_page.dart';

enum NavigationEnum {
  home(icon: Icons.home, label: "Home"),
  account(icon: Icons.wallet, label: "Account"),
  transaction(icon: Icons.attach_money, label: "Transaction"),
  settings(icon: Icons.settings, label: "Settings");

  const NavigationEnum({required this.icon, required this.label});

  final IconData icon;
  final String label;
}

class PageMap {
  static final Map<String, Widget> _map = {
    "home": HomePage(),
    "account": AccountListPage(),
    "transaction": TransactionListPage(),
    "settings": SettingsPage(),
  };

  static List<Widget> getPages() {
    return _map.values.toList();
  }

  static Widget getPage(String name) {
    return _map[name] ?? HomePage();
  }
}
