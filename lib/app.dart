import 'package:flutter/material.dart';
import 'package:simple_social_app/src/pages/friends_list_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: pageIndex,
        children: [
          const FriendsListPage(),
          Container(color: const Color.fromARGB(255, 111, 172, 222)),
          Container(color: const Color.fromARGB(255, 129, 236, 132)),
          Container(color: const Color.fromARGB(255, 238, 228, 135)),
          Container(color: const Color.fromARGB(255, 84, 81, 81)),
        ],
      ),

      /// 커스텀 바텀 앱 바
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home_filled,
                  color: Color.fromARGB(255, 113, 178, 231)),
              Icon(Icons.favorite, color: Colors.grey),
              Opacity(opacity: 0.0, child: Icon(Icons.add, color: Colors.grey)),
              Icon(Icons.account_circle, color: Colors.grey),
              Icon(Icons.settings, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
