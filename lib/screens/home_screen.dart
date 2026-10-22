import 'package:flutter/material.dart';
import 'about_screen.dart'; // On va le créer juste après

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        backgroundColor: Colors.orange,
        actions: [
          // Bouton Recherche demandé dans le sujet G2
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {}, // Sera géré à l'étape 6 (interactions)
          ),
          // Bouton Notifications demandé dans le sujet G2
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {}, // Sera géré à l'étape 6 (interactions)
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text(
                'Ma Garderie',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () => Navigator.pop(context),
            ),
            // Le sujet G2 demande "Menus" et non "Activités"
            ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: const Text('Menus'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Sera géré à l'étape 6 (interactions)
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Titre de section demandé dans le sujet G2
            Text(
              'Menus du jour',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // La liste des menus viendra ici à l'étape 5
          ],
        ),
      ),
    );
  }
}