import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Data Pasien", style: TextStyle(color: Colors.white)),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PasienForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
            pasien: Pasien(
              nomorRm: "RM-001",
              nama: "Budi Santoso",
              tanggalLahir: "15-08-1988",
              nomorTelepon: "08111222333",
              alamat: "Jl. Merdeka No. 10",
            ),
          ),
          PasienItem(
            pasien: Pasien(
              nomorRm: "RM-002",
              nama: "Siti Aminah",
              tanggalLahir: "22-11-1992",
              nomorTelepon: "08555666777",
              alamat: "Jl. Sudirman No. 45",
            ),
          ),
        ],
      ),
    );
  }
}
