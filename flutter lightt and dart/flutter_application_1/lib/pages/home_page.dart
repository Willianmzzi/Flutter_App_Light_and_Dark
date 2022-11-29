import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter_application_1/model/feed_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pages = [
    const FeedWidget(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.pink,
    ),
  ];
  final url =
      'https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
      ),
      drawer: SafeArea(
        child: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(url)),
              accountName: Text('Aluno Fatec Araras'),
              accountEmail: Text('aluno@fatec.sp.gov.br'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
            )
          ],
        )),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
