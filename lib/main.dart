import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Praktikum2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'A P L I K A S I K U'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    /* Appbar Content */
    AppBar appbarContent = AppBar(
      title: Text(widget.title),
      centerTitle: true,
      backgroundColor: Colors.lightBlue,
    );

    /* Main Content */
    Container content = Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Center(
            child: Text(
              "Selamat Datang",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 900,
            height: 500,
            color: Colors.yellow,
            child: Image.asset(
              "image/logo_bogor.png",
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
          ),
          // Tambahkan Padding di sekitar tombol
          Padding(
            padding: EdgeInsets.only(top: 20), // Atur padding atas 20 pixel
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Center(
                          child: Container(
                            child: Text("Sejarah Kota Bogor"),
                          ),
                        ),
                        content: Text("Bogor Itu Indah"),
                        actions: <Widget>[
                          TextButton(
                            child: Text("Ok"),
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pop();
                              });
                            },
                          )
                        ],
                      );
                    },
                  );
                });
              },
              child: Text("Ayo Belajar Sejarah"),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: appbarContent,
      body: content,
    );
  }
}
