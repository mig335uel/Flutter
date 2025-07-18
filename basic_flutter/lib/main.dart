import 'package:basic_flutter/Components/Text.dart';
import 'package:basic_flutter/Components/Textfield.dart';
import 'package:basic_flutter/Components/button.dart';
import 'package:flutter/material.dart';
import 'package:basic_flutter/Layout/ColumnExamples.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          child: IndexedStack(
            index: _selectedIndex,
            children: [
              ColumnExamples(),
              TextExample(),
              TextFieldExample(),
              ButtomExample(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}