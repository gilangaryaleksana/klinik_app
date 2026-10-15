import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatelessWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Detail Pegawai", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NIP : ${pegawai.nip}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text("Nama : ${pegawai.nama}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text("Tanggal Lahir : ${pegawai.tanggalLahir}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text("No. Telepon : ${pegawai.nomorTelepon}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text("Email : ${pegawai.email}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {},
                  child: const Text("Ubah", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {},
                  child: const Text("Hapus", style: TextStyle(color: Colors.white)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
