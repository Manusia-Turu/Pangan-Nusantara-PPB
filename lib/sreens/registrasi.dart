import 'package:flutter/material.dart';
import 'package:tubes/sreens/lupa.dart';
import 'package:tubes/sreens/opening.dart';
import 'login.dart';
import 'package:tubes/sreens/facebook.dart';
import 'package:cool_alert/cool_alert.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Registrasi> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                context, MaterialPageRoute(builder: (context) => Opening()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            key: _formKey,
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
                    SizedBox(height: 10),
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
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'SIGN UP',
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
                    obscureText: true,
                    controller: newPasswordController, // Menyembunyikan teks
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
                    controller: confirmPasswordController,
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
                      if (newPasswordController.text !=
                          confirmPasswordController.text) {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.error,
                          text: "Wrong Password!!",
                        );
                      } else {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.success,
                          text: "Account",
                          onConfirmBtnTap: () {
                            // Berpindah ke halaman login setelah CoolAlert ditutup
                            Navigator.pop(context);

                            // Berpindah ke halaman login setelah CoolAlert ditutup
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 253, 194, 0)),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255)),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => facebookPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            foregroundColor: Color.fromARGB(255, 0, 0, 0),
                            side: BorderSide(color: Colors.grey, width: 1),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/facebook1.png',
                                width: 24,
                                height: 24,
                              ),
                              Expanded(
                                child: Text(
                                  'Facebook',
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
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: RichText(
                    textAlign: TextAlign.center, // Agar teks berada di tengah
                    text: TextSpan(
                      text: 'By registering you agree to the ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color:
                            Color.fromARGB(255, 92, 78, 78), // Warna teks biasa
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors
                                .blue, // Warna untuk teks yang bisa diklik
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 92, 78, 78),
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors
                                .blue, // Warna untuk teks yang bisa diklik
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
