import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/bunkers_page.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // Список для хранения данных бункеров
  List<Bunker> _bunkers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Домашняя Страница"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.format_list_numbered_sharp, size: 48),
            ),
            ListTile(
              leading: Icon(Icons.app_registration_outlined),
              title: Text("Р Е Г И С Т Р А Ц И Я"),
              onTap: () {
                Navigator.pushNamed(context, '/registrationpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.data_saver_off_sharp),
              title: Text("Б У Н К Е Р А"),
              onTap: () {
                Navigator.pushNamed(context, '/bunker'); // Переход на страницу добавления бункера
              },
            ),
            ListTile(
              leading: Icon(Icons.note_add),
              title: Text("З А Я В К И"),
              onTap: () {
                Navigator.pushNamed(context, '/zayavkipage');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registrationpage');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                textStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
                backgroundColor: Colors.blue[50],
              ),
              child: const Text("Р Е Г И С Т Р А Ц И Я"),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bunkerspage');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                textStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
                backgroundColor: Colors.blue[50],
              ),
              child: const Text("Б У Н К Е Р А"),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/zayavkipage');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                textStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
                backgroundColor: Colors.blue[50],
              ),
              child: const Text("З А Я В К И"),
            ),
            const SizedBox(height: 40.0),
            // Добавляем  ListView.builder  для отображения списка бункеров
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}