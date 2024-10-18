import 'package:flutter/material.dart';
import 'package:tubes/sreens/registrasi.dart';
import 'package:tubes/sreens/login.dart';
import 'package:flutter/gestures.dart';

class Opening extends StatelessWidget {
  Opening({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/lapar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(
                0.5), // Adjust the opacity to darken the background
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, bottom: 40),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment
                    .start, // Mengatur agar konten berada di atas
                children: [
                  SizedBox(
                      height: 0), // Menambahkan ruang di atas jika diperlukan
                  Stack(
                    alignment:
                        Alignment.center, // Menempatkan teks di tengah gambar
                    children: [
                      Image.asset(
                        'assets/images/Ellipse7.png', // Ganti dengan path gambar Anda
                        width: 160, // Sesuaikan ukuran gambar
                        height: 164,
                      ),
                      Text(
                        'LAPER\nPAK!!!', // Teks yang akan ditampilkan di atas gambar
                        textAlign:
                            TextAlign.center, // Menyelaraskan teks di tengah
                        style: TextStyle(
                          fontFamily:
                              'ZhiMangXing', // Pastikan font sudah didefinisikan
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: Colors.red,
                          shadows: [
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 2.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: Text(
                      'There is no hunger that\ncannot be overcome,\nwith LAPER PAK we can\nreduce hunger out there',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 70, right: 20, left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registrasi()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 253, 194, 0)),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RichText(
                      textAlign: TextAlign.center, // Agar teks berada di tengah
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color.fromARGB(
                              255, 255, 255, 255), // Warna teks biasa
                        ),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 253, 194,
                                  0), // Warna untuk teks yang bisa diklik
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Ketika teks ditekan, arahkan ke halaman lain
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
