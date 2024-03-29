import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/features/app/home/contacts_page.dart';
import 'package:whatsapp_clone_app/features/app/theme/style.dart';
import 'package:whatsapp_clone_app/features/call/presentation/pages/calls_history_page.dart';
import 'package:whatsapp_clone_app/features/chat/presentation/pages/chat_page.dart';
import 'package:whatsapp_clone_app/features/status/presentation/pages/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController!.addListener(() {
      setState(() => _currentTabIndex = _tabController!.index);
    });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: greyColor)),
        actions: [
          Row(
            children: [
              const Icon(Icons.camera_alt_outlined, color: greyColor, size: 28),
              const SizedBox(width: 25),
              const Icon(Icons.search, color: greyColor, size: 28),
              const SizedBox(width: 10),
              PopupMenuButton<String>(
                icon: const Icon(
                  Icons.more_vert,
                  color: greyColor,
                  size: 28,
                ),
                color: appBarColor,
                iconSize: 28,
                onSelected: (value) {},
                itemBuilder: (context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: "Settings",
                    child: GestureDetector(
                        // onTap: () => Navigator.pushNamed(context, PageConst.settingsPage, arguments: widget.uid),
                        child: const Text('Settings')),
                  ),
                ],
              ),
            ],
          ),
        ],
        bottom: TabBar(
          onTap: (value) {
            setState(() => _currentTabIndex = value);
          },
          controller: _tabController,
          labelColor: tabColor,
          unselectedLabelColor: greyColor,
          indicatorColor: tabColor,
          tabs: const [
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: switchFloatingActionButtonOnTabIndex(_currentTabIndex),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ChatPage(),
          StatusPage(),
          CallsHistoryPage(),
        ],
      ),
    );
  }

  switchFloatingActionButtonOnTabIndex(int index) {
    switch (index) {
      case 0:
        return FloatingActionButton(
          backgroundColor: tabColor,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactsPage()));
          },
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        );
      case 1:
        return FloatingActionButton(
          backgroundColor: tabColor,
          onPressed: () {},
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        );
      case 2:
        return FloatingActionButton(
          backgroundColor: tabColor,
          onPressed: () {},
          child: const Icon(
            Icons.add_call,
            color: Colors.white,
          ),
        );
      default:
    }
  }
}
