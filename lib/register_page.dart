import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Color.fromARGB(255, 0, 195, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person,
                size: 100, color: Color.fromARGB(255, 0, 217, 255)),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: 'Nama Lengkap', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                  labelText: 'Confirm Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tampilkan pop up "Pendaftaran Berhasil"
                showDialog(
                  context: context,
                  barrierDismissible:
                      false, // Cegah dialog ditutup sebelum waktunya
                  builder: (BuildContext context) {
                    Future.delayed(Duration(milliseconds: 300), () {
                      Navigator.pop(context); // Tutup dialog setelah 300ms
                      Navigator.pushReplacementNamed(
                          context, '/'); // Pindah ke halaman login
                    });
                    return AlertDialog(
                      title: Text('Pendaftaran Berhasil'),
                      content: Text('Akun Anda telah berhasil dibuat!'),
                    );
                  },
                );
              },
              child: Text('Daftar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/'); // Kembali ke halaman login
              },
              child: Text(
                'Sudah punya akun ? Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
