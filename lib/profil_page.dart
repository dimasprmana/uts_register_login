import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        backgroundColor: Color.fromARGB(255, 0, 195, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60, // Atur ukuran foto profil
              backgroundImage:
                  AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('NAMA: ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Expanded(child: Text('Dimas Permana', style: TextStyle(fontSize: 15))),
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  children: [
                    Text('EMAIL: ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Expanded(child: Text('dimaspermana@gmail.com', style: TextStyle(fontSize: 15))),
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  children: [
                    Text('ALAMAT: ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Expanded(child: Text('Glagah, Kec.Glagah, Kab.Banyuwangi', style: TextStyle(fontSize: 15))),
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  children: [
                    Text('NO TELP: ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Expanded(child: Text('0859175722735', style: TextStyle(fontSize: 15))),
                  ],
                ),
                SizedBox(height: 13),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/'); // Kembali ke halaman login
              },
              child: Text('Keluar'),
            ),
          ],
        ),
      ),
    );
  }
}
