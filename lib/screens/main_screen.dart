
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'health_dashboard_screen.dart';
import 'medication_log_screen.dart';
import 'emergency_card_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const ChatScreen(),
    const HealthDashboardScreen(),
    const MedicationLogScreen(),
    const EmergencyCardScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('蘇林彩香 您好'),
        backgroundColor: Colors.purple[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '聊天主頁面',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk),
            label: '健康偵測',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '用藥提醒紀錄',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied_alt),
            label: '緊急連絡卡',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
