
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
        title: const Text('樂齡守護'),
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
            icon: Icon(Icons.chat),
            label: 'AI 語音聊天',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: '健康數據',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: '用藥管理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
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
