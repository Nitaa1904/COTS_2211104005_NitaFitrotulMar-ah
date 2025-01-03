import 'package:flutter/material.dart';
import 'package:cotsgojek/design_system/styles/color.dart';
import 'package:cotsgojek/design_system/styles/typograph.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Logo dan ilustrasi
            Expanded(
              flex: 3,
              child: PageView(
                children: [
                  OnboardingSlide(
                    imagePath:
                        'assets/images/onboarding1.png', // Ganti dengan path gambar Anda
                    title: "Selamat datang di gojek!",
                    subtitle:
                        "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun.",
                  ),
                  // Tambahkan slide tambahan jika diperlukan
                ],
              ),
            ),
            // Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 0
                        ? ColorCollection.greenGojek
                        : ColorCollection.neutral500,
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),
            // Tombol navigasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorCollection.greenGojek,
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: ColorCollection.greenGojek),
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Belum ada akun?, Daftar dulu",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorCollection.greenGojek,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Footer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: ColorCollection.neutral600,
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class OnboardingSlide extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const OnboardingSlide({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 200), // Sesuaikan ukuran gambar
        const SizedBox(height: 16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: ColorCollection.item,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: ColorCollection.neutral600,
            ),
          ),
        ),
      ],
    );
  }
}
