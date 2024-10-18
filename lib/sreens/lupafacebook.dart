import 'package:flutter/material.dart';
import 'package:tubes/sreens/facebook.dart';

class forgot extends StatelessWidget {
  forgot({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => facebookPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment
                  .start, // Mengatur agar konten berada di atas
              children: [
                SizedBox(
                    height: 30), // Menambahkan ruang di atas jika diperlukan
                Stack(
                  alignment:
                      Alignment.center, // Menempatkan teks di tengah gambar
                  children: [
                    Image.asset(
                      'assets/images/facebook2.png', // Ganti dengan path gambar Anda
                      width: 160, // Sesuaikan ukuran gambar
                      height: 164,
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 24,
                        color: Color.fromARGB(255, 24, 118, 242),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 0),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 20), // Menambahkan padding di semua sisi
                  child: Text(
                    'Current Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 76, 76, 76),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16), // Menambahkan padding
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Current Password',
                      hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        color: Color.fromARGB(255, 152, 152, 152),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 10), // Menambahkan padding di semua sisi
                  child: Text(
                    'Kata Sandi',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 76, 76, 76),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                    left: 16,
                  ), // Menambahkan padding
                  child: TextField(
                    obscureText: true, // Menyembunyikan teks
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'New Password',
                      hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        color: Color.fromARGB(255, 152, 152, 152),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0),

                Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                    left: 16,
                    top: 10,
                  ), // Menambahkan padding di semua sisi
                  child: Text(
                    'Konfirmasi Kata Sandi',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 76, 76, 76),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16), // Menambahkan padding
                  child: TextField(
                    obscureText: true, // Menyembunyikan teks
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: 'Re-type New Password',
                      hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        color: Color.fromARGB(255, 152, 152, 152),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0),

                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => facebookPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 24, 118, 242),
                    ),
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
