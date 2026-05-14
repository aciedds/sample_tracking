import 'package:daily_reboot_tracker/features/auth/presentation/login/view/login_view.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/register/view/register_view.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.onAuthenticated});

  final VoidCallback onAuthenticated;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Masuk'),
            Tab(text: 'Daftar'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: LoginView(onAuthenticated: widget.onAuthenticated),
          ),
          RegisterView(onRegistered: widget.onAuthenticated),
        ],
      ),
    );
  }
}
