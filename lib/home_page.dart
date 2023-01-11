import 'package:flutter/material.dart';
import 'package:my_first_app/get_rich_quick_page.dart';
import 'package:my_first_app/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: ListTile(
                    title: Text(
                      'Griffy B',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    debugPrint('Settings Tapped in Drawer');
                  },
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                ),
                ListTile(
                  onTap: () {
                    debugPrint('Logout button pressed');
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const MyApp();
                        },
                      ),
                    );
                  },
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: Wrap(
                  spacing: 10,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('Money Button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Money'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('Bitcoin Button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Bitcoin'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('Stock Market Button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Stock Market'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('House Market Button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('House Market'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        debugPrint('Diamond Hands Button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Diamond Hands'),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint('get rich quick owl tapped');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const GetRichQuickPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(
                          2,
                          2,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('images/image1.jpg'),
                      const ListTile(
                        title: Text('How to get rich'),
                        trailing: Icon(Icons.money),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
