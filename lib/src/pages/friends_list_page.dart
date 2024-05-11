import 'package:flutter/material.dart';

class FriendsListPage extends StatelessWidget {
  const FriendsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black87),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          _searchBar(),
          _friendsList(),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
    );
  }

  Widget _friendsList() => Expanded(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) => const ListTile(
                title: Text('익명'),
                subtitle: Text('010-6546-9879'),
              ),
            ),
          ),
        ),
      );
}
