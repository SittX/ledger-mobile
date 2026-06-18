import 'package:flutter/material.dart';

class IconMap {
  static final Map<String, IconData> _iconMap = {
    "home": Icons.home,
    "account": Icons.monetization_on,
    "transaction": Icons.transfer_within_a_station,
    "settings": Icons.settings,
  };

  static IconData getIcon(String iconName) {
    return _iconMap[iconName] ?? Icons.help_outline;
  }

  static String getName(IconData data) {
    return _iconMap.entries
        .firstWhere(
          (element) => element.value == data,
          orElse: () => const MapEntry('help_outline', Icons.help_outline),
        )
        .key;
  }
}
