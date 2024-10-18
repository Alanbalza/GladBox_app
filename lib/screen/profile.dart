import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.notifications_none, color: Colors.black),
          onPressed: () {
            // Acción del botón de notificaciones
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_backup_restore, color: Colors.black),
            onPressed: () {
              // Acción del botón de restaurar
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Acción del botón de más opciones
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://via.placeholder.com/150'), // Imagen de ejemplo
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nombre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'youremail@domain.com | +01 234 567 89',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            // Información del perfil
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.edit_note),
                    title: Text('Editar informacion del perfil'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Acción para editar perfil
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notificaciones'),
                    trailing: Text(
                      'ON',
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      // Acción para notificaciones
                    },
                  ),
                ],
              ),
            ),
            // Seguridad y tema
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Seguridad'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Acción para seguridad
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.brightness_6),
                    title: Text('Tema'),
                    trailing: Text(
                      'Light mode',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      // Acción para cambiar tema
                    },
                  ),
                ],
              ),
            ),
            // Soporte y ayuda
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.help_outline),
                    title: Text('Help & Support'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Acción para ayuda
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.contact_mail_outlined),
                    title: Text('Contact us'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Acción para contacto
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text('Privacy policy'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Acción para políticas de privacidad
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 3, // Indica que la pestaña activa es "Profile"
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows_outlined),
            label: 'Trans.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report_gmailerrorred_outlined),
            label: 'Reportar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
