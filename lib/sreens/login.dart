import 'package:flutter/material.dart';
import 'package:tubes/sreens/facebook.dart';
import 'package:tubes/sreens/lupa.dart';
import 'package:tubes/sreens/opening.dart';
import 'package:tubes/sreens/registrasi.dart';
import 'package:flutter/gestures.dart';
import 'package:cool_alert/cool_alert.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  _LoginPageState createState() => _LoginPageState();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
}

class _LoginPageState extends State<LoginPage> {
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Registrasi()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment:
                MainAxisAlignment.start, // Mengatur agar konten berada di atas
            children: [
              SizedBox(height: 0), // Menambahkan ruang di atas jika diperlukan
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
                    textAlign: TextAlign.center, // Menyelaraskan teks di tengah
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
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 24,
                      color: Colors.red,
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
                  'Username',
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
                    hintText: 'Username',
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
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 12,
                      color: Color.fromARGB(255, 152, 152, 152),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Opening(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 253, 194, 0)),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: RichText(
                  textAlign: TextAlign.start, // Agar teks berada di tengah
                  text: TextSpan(
                    text: 'Forget Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color:
                          Color.fromARGB(255, 92, 78, 78), // Warna teks biasa
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Ketika teks ditekan, arahkan ke halaman lain
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lupa(),
                          ),
                        );
                      },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Color.fromARGB(252, 217, 217, 217),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'or',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Color.fromARGB(255, 92, 78, 78)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Color.fromARGB(252, 217, 217, 217),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // Menyebarkan tombol secara merata
                children: [
                  Container(
                    width: 150, // Atur lebar sesuai kebutuhan
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        foregroundColor: Color.fromARGB(255, 0, 0, 0),
                        side: BorderSide(color: Colors.grey, width: 1),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/google1.png',
                            width: 24,
                            height: 24,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Google',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 92, 78, 78),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150, // Atur lebar sesuai kebutuhan
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          foregroundColor: Color.fromARGB(255, 0, 0, 0),
                          side: BorderSide(color: Colors.grey, width: 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => facebookPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/facebook1.png',
                              width: 24,
                              height: 24,
                            ),
                            Expanded(
                              child: Text(
                                'Facebokk',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 92, 78, 78),
                                ),
                              ),
                            ),
                          ],
                        ),
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
