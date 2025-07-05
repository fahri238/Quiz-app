import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  // 1. Terima parameter onProfileTap di constructor
  const HomeScreen(this.startQuiz, {super.key, required this.onProfileTap});

  final void Function() startQuiz;
  // 2. Deklarasikan variabelnya
  final void Function() onProfileTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/logo-quiz.png', width: 300),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
          const SizedBox(height: 10),
          // 3. Gunakan onProfileTap untuk tombol Profile
          TextButton.icon(
            onPressed: onProfileTap,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.person),
            label: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
