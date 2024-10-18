import 'package:flutter/material.dart';
import 'package:tubes/sreens/lupafacebook.dart';
import 'package:tubes/sreens/opening.dart';
import 'package:tubes/sreens/registrasi.dart';
import 'package:flutter/gestures.dart';
import 'package:tubes/sreens/lupa.dart';

class facebookPage extends StatefulWidget {
  facebookPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<facebookPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment:
                MainAxisAlignment.start, // Mengatur agar konten berada di atas
            children: [
              SizedBox(height: 30), // Menambahkan ruang di atas jika diperlukan
              Stack(
                alignment:
                    Alignment.center, // Menempatkan teks di tengah gambar
                children: [
                  Image.asset(
                    'assets/images/facebook2.png', // Ganti dengan path gambar Anda
                    width: 160, // Sesuaikan ukuran gambar
                    height: 164,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: Text(
                      'English (US)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14), // Ubah sesuai kebutuhan
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 20), // Menambahkan padding
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
                    hintText: 'Mobile number or email',
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 76, 76, 76),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 20), // Menambahkan padding
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
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 76, 76, 76),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Opening()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 24, 118, 242)),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: RichText(
                  textAlign: TextAlign.center, // Agar teks berada di tengah
                  text: TextSpan(
                    text: 'Forgot Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 0, 0, 0), // Warna teks biasa
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Ketika teks ditekan, arahkan ke halaman lain
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => forgot(),
                          ),
                        );
                      },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180, right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    side: BorderSide(
                        color: Color.fromARGB(255, 24, 118, 242), width: 1),
                  ),
                  child: Text(
                    'Create new account',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        color: Color.fromARGB(255, 24, 118, 242)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  'assets/images/meta.png', // Ganti dengan path gambar Anda
                  width: 99, // Sesuaikan ukuran gambar
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
