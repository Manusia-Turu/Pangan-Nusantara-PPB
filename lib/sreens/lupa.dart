import 'package:flutter/material.dart';
import 'package:tubes/sreens/login.dart';
import 'package:cool_alert/cool_alert.dart';

class Lupa extends StatelessWidget {
  Lupa({super.key});
  final _formKey = GlobalKey<FormState>();
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
                context, MaterialPageRoute(builder: (context) => LoginPage()));
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
                    'Change Password',
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
                    controller: newPasswordController,
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
                      // Memeriksa apakah password baru sama dengan konfirmasi password
                      if (newPasswordController.text !=
                          confirmPasswordController.text) {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.error,
                          text: "Passwords do not match!",
                        );
                      } else {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.success,
                          text: "Password changed successfully",
                          onConfirmBtnTap: () {
                            // Menutup CoolAlert terlebih dahulu
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
