import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Profile', style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
              ),
              child: const TabBar(
                tabs: [
                  Tab(text: 'Saved'),
                  Tab(text: 'My Profile'),
                  Tab(text: 'Help & Support'),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(), // Saved Screen
            const MyProfile(), // My Profile Screen
            Container(), // Help & Support Screen
          ],
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const ProfileHeader(),
        const SizedBox(height: 24),
        const AccountSection(),
        const SizedBox(height: 24),
        const SettingsSection(),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            const CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuCYxkRRe4oEkePCAaK8zDQIOsU4AMbLN1OHwtyi-VUIo2olanHxIp3AXGL9s0EbpsEyxv2EyZpb5cOueIGKHmQl6bmzx_HZWiCOdshJvZsPDx_ArbXPQ5elZiZAyrKI5e9xfqUep4twkVV8rffNHENlS4ikBBUg3j_mO2QXE65deT2iw_LLZf7rtD3bAihBwiHEf3GyJc4V_RUm_I2tMNSKoFmE67YwsQiaaGR1sjNK7K5quuufPls92QXpl4OJL80TAD3OulcKf54'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.edit, color: Colors.white, size: 16),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Aarav Sharma', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('+91 98765 43210', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MY ACCOUNT', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: const [
              ProfileListItem(icon: Icons.home, text: 'My Properties'),
              ProfileListItem(icon: Icons.search, text: 'My Searches'),
              ProfileListItem(icon: Icons.people_alt, text: 'My Contacts'),
              ProfileListItem(icon: Icons.description, text: 'My Documents'),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('SETTINGS', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: const [
              ProfileListItem(icon: Icons.notifications, text: 'Notifications'),
              ProfileListItem(icon: Icons.language, text: 'Language'),
              ProfileListItem(icon: Icons.logout, text: 'Logout', isLogout: true),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isLogout;

  const ProfileListItem({
    super.key,
    required this.icon,
    required this.text,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.black),
      title: Text(text, style: TextStyle(color: isLogout ? Colors.red : Colors.black)),
      trailing: isLogout ? null : const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {},
    );
  }
}
