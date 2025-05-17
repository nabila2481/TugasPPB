import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Latar belakang putih
      appBar: AppBar(
        title: Text('Profilku'),
        backgroundColor: Colors.lightBlue[300], // Biru pastel
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto Profil
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              SizedBox(height: 16),
              // Nama & Deskripsi
              Text(
                'Nama Pengguna',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[800],
                ),
              ),
              Text(
                'Flutter Developer | Mahasiswi Informatika',
                style: TextStyle(fontSize: 16, color: Colors.blueGrey[500]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Info Kontak - Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.lightBlue[300]),
                  SizedBox(width: 8),
                  Text('user@email.com'),
                ],
              ),
              SizedBox(height: 10),

              // Info Kontak - Telepon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.lightBlue[300]),
                  SizedBox(width: 8),
                  Text('+62 812-3456-7890'),
                ],
              ),
              SizedBox(height: 30),

              // Tombol Aksi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Follow clicked');
                    },
                    child: Text('Follow'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue[300],
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('Message clicked');
                    },
                    child: Text('Message'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.lightBlue[300],
                      side: BorderSide(color: Colors.lightBlue[300]!),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
