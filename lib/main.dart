import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Digitalcard()); // MaterialApp
  }
}

class Digitalcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 150, 208),
      appBar: AppBar(title: Text("Digital Card")), // AppBar
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
              SizedBox(height: 15),
              Text(
                "Nama",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text("NIM/Profesi"),
              Divider(), //Garis pemisah
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.email),
                  ),
                  Text("alamat email anda@gmail.com"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
