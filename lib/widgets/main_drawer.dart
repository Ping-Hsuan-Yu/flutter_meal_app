import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text("???")
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.restaurant),
            title: const Text(
              "Meals",
            ),
            onTap: () {onSelectScreen("meals");},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "Filter",
            ),
            onTap: () {onSelectScreen("filter");},
          ),
        ],
      ),
    );
  }
}
