import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  HttpOverrides.global = MyHttpOverrides();
  runApp(AppWidget());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  String _demodata = '';

  String demodata1 = '';
  String demodata2 = '';

  _myHomePageState() {
    getData().then((val) => setState(() {
          _demodata = val.toString();
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: controller1,
            ),
            TextField(
              controller: controller2,
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(demodata1),
            ),
            const SizedBox(height: 5),
            Center(
              child: Text(demodata2),
            ),
            const SizedBox(height: 5),
            Center(
              child: Text(_demodata),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _myHomePageState();
          });
        },
      ),
    );
  }

  Future getData() async {
    demodata1 = controller1.text.toString();
    demodata2 = controller2.text.toString();

    final url =
        'https://192.168.43.13/phpprodemo/demo1.php?studname=$demodata1&age=$demodata2';
    final http.Response response = await http.get(Uri.parse(url));
    final data = response.body;
    return data.toString();
  }
}*/
