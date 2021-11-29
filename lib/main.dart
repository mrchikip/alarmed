import 'package:alarmed/clock.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'AlarMed App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFD9FFFB),
        appBar: AppBar(
          backgroundColor: const Color(0xFF00796B),
          title: const Text('AlarMed App'), // This is the title in the app bar.
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.sentiment_satisfied_alt_sharp),
              ),
              Tab(
                icon: Icon(Icons.notifications_active),
              ),
              Tab(
                icon: Icon(Icons.info),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: ClockApp(),
            ),
            Center(
              child: Text(
                  "Aqui van las alarmas creadas y un boton para agregar mas"),
            ),
            Center(
              child: Text(
                  "Aqui va la informacion del paciente, su medicacion, y datos medicos relevantes. O informacion del proveedor de medicamentos"),
            ),
          ],
        ),
      ),
    );
  }
}
