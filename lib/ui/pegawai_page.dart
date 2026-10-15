import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Data Pegawai", style: TextStyle(color: Colors.white)),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PegawaiForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
            pegawai: Pegawai(
              nip: "19950102",
              nama: "Dr. Andi Wijaya",
              tanggalLahir: "02-01-1995",
              nomorTelepon: "08123456789",
              email: "andi@klinik.com",
              password: "123",
            ),
          ),
          PegawaiItem(
            pegawai: Pegawai(
              nip: "19970512",
              nama: "Ners Rina Sitorus",
              tanggalLahir: "12-05-1997",
              nomorTelepon: "08987654321",
              email: "rina@klinik.com",
              password: "123",
            ),
          ),
        ],
      ),
    );
  }
}
