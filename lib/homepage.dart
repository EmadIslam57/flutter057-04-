
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'registrationformpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vocabulary"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Vocabulary"),
              accountEmail: Text("Learn • Practice • Grow"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.menu_book),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text("Saved Words"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.login),
              title: const Text("Login"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text("Register"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationFormPage(),
                  ),
                );
              },
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246, 225, 239),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.menu_book,
                  size: 40,
                  color: Color.fromARGB(255, 162, 76, 118),
                ),
                SizedBox(height: 10),
                Text(
                  "Learn New Words",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text("Build your vocabulary one word at a time."),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Word Categories",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 240, 235),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const ListTile(
              leading: Icon(Icons.pets, color: Colors.brown),
              title: Text("Animals"),
              subtitle: Text("Learn animal names"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 239, 232, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const ListTile(
              leading: Icon(Icons.palette, color: Colors.purple),
              title: Text("Colors"),
              subtitle: Text("Learn different colors"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 229, 248, 237),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const ListTile(
              leading: Icon(Icons.restaurant, color: Colors.green),
              title: Text("Food"),
              subtitle: Text("Learn food names"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 242, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const ListTile(
              leading: Icon(Icons.local_florist, color: Colors.teal),
              title: Text("Nature"),
              subtitle: Text("Learn words about nature"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          const SizedBox(height: 20),

          const Center(
            child: Text(
              "Learn • Practice • Grow",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 162, 76, 118),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          );
        },
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        child: const Icon(Icons.person),
      ),
    );
  }
}

