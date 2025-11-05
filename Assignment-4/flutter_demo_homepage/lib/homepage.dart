import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_demo_homepage/models.dart';

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
              leading: const Icon(Icons.contact_page, color: Color(0xFF00F0FF)),
              title: const Text("Contact"),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _searchField(),
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
          Text(
            "Options:",
            style: TextStyle(
              color: Color(0xFF00F0FF),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            itemCount: getDemoItems().length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.7,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, idx) {
              final item = getDemoItems()[idx];
              return Card(
                color: Color.fromARGB(255, 68, 110, 128),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item.icon, color: Color(0xFF00F0FF), size: 25),
                      SizedBox(height: 4),
                      Text(
                        item.title,
                        style: TextStyle(
                          color: Color(0xFF00F0FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        item.description,
                        style: TextStyle(
                          color: Color(0xFFE0F7FA),
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 68, 110, 128),
          contentPadding: const EdgeInsets.all(5),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 14,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
