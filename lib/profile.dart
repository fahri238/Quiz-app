// Lokasi: lib/profile.dart

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.onBack,
  }); // Tambahkan onBack untuk Langkah 4

  final void Function() onBack; // Tambahkan variabel untuk Langkah 4

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        78,
        13,
        151,
      ), // Warna ungu seperti tema
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  'https://instagram.fsub9-1.fna.fbcdn.net/v/t51.2885-19/387720917_655028813439378_338616874244316567_n.jpg?_nc_ht=instagram.fsub9-1.fna.fbcdn.net&_nc_cat=106&_nc_oc=Q6cZ2QHgi5gQ0mNkTYhG9LlLzTWEehNRNojaxZkfnDVRsNX-3aGdl82RnbAVNbPLE-basdQ&_nc_ohc=4eIshvr1DmQQ7kNvwFTKEmU&_nc_gid=YXLTgBG2DUDSmZgikf6Bhw&edm=AP4sbd4BAAAA&ccb=7-5&oh=00_AfTHr26K5OEqasNR1LpgX3ngmABqNTAW422wVU_xHn6O7A&oe=686E8223&_nc_sid=7a9f4b',
                ),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: screenSize.height * 0.03),
              const Text(
                'Nama Mahasiswa',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Text(
                'Muhammad Fahri Ilmi', 
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenSize.height * 0.02),
              const Text(
                'NPM',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Text(
                '2210010160', 
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenSize.height * 0.04),
              buildInfoCard(
                context,
                icon: Icons.email,
                label: 'Email',
                value: 'fahrilmi25@gmail.com', 
                screenSize: screenSize,
              ),
              SizedBox(height: screenSize.height * 0.015),
              buildInfoCard(
                context,
                icon: Icons.phone,
                label: 'Telepon',
                value: '+6285391953719', 
                screenSize: screenSize,
              ),
              SizedBox(height: screenSize.height * 0.015),
              buildInfoCard(
                context,
                icon: Icons.school,
                label: 'Jurusan',
                value: 'Teknik Informatika', 
                screenSize: screenSize,
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: onBack, 
                child: const Text(
                  'Kembali',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required Size screenSize,
  }) {
    return Container(
      width: screenSize.width * 0.85,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(50, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 28),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
