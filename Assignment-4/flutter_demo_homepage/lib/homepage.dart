import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Homepage"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout, color: Color.fromARGB(255, 236, 62, 62)),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Rabbi",
                style: TextStyle(
                  color: Color.fromARGB(255, 122, 237, 245),
                  fontWeight: FontWeight.normal,
                ),
              ),
              accountEmail: Text(
                "bsmrabbi@gmail.com",
                style: TextStyle(
                  color: Color.fromARGB(255, 122, 237, 245),
                  fontWeight: FontWeight.normal,
                ),
              ),
              decoration: BoxDecoration(color: Color(0xFF282a36)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 16, 206, 219),
                child: Text(
                  "R",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home, color: Color(0xFF00F0FF)),
              title: const Text("Home"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person, color: Color(0xFF00F0FF)),
              title: const Text("Profile"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.help, color: Color(0xFF00F0FF)),
              title: const Text("Help"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.notifications,
                color: Color(0xFF00F0FF),
              ),
              title: const Text("Notifications"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.contact_page, color: Color(0xFF00F0FF)),
              title: const Text("Contact"),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 15),
          Text(
            "Welcome to the Home Page!\n",
            style: TextStyle(
              color: Color(0xFF00F0FF),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.1,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text(
                  'Hello, this is a demo of the home page.\n',
                  style: TextStyle(
                    color: Color(0xFF00F0FF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
