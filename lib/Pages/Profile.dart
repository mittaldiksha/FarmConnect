import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  final String role;
  final String email;
  final String phone;
  final String location;

  const Profile({
    Key? key,
    required this.name,
    required this.role,
    required this.email,
    required this.phone,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(title: Text("My Profile", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),),),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person_rounded, size: 70,color: Colors.lightGreen,), // Replace with NetworkImage or dynamic image
            ),
            const SizedBox(height: 16),
            Text(name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(role, style: const TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 20),
            _buildInfoTile(Icons.email, 'Email', email),
            _buildInfoTile(Icons.phone, 'Phone', phone),
            _buildInfoTile(Icons.location_on, 'Location', location),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to Edit Profile Page
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent,
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {
                // Perform logout logic
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String value) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.green),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
