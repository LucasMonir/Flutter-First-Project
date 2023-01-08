import 'package:flutter/material.dart';
import 'package:projeto_teste/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  String profileImage = 'assets/images/background.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.asset(profileImage),
              ),
              accountName: const Text('Lucão'),
              accountEmail: const Text('email@mail.com'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              subtitle: const Text('Back home'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Log Out'),
              subtitle: const Text('Log out of the app'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Title(
          color: Colors.black,
          child: const Text('Flutter App'),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text('Counter: $counter'),
            const CustomSwitcher(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.black,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.red,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.radio_button_on),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
