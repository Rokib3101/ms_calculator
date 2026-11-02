import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy & Data Security',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'This policy describes the information MS Calculator keeps and the network features it uses.',
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: theme.brightness == Brightness.dark
                    ? Colors.grey.shade300
                    : Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 24),
            _buildSectionCard(
              context: context,
              title: '1. Data stored on your device',
              icon: Icons.storage_outlined,
              content:
                  'Your calculation history and selected theme preference are stored locally on your device using Android app preferences. The app does not upload calculator expressions or history.',
            ),
            const SizedBox(height: 16),
            _buildSectionCard(
              context: context,
              title: '2. Network and external links',
              icon: Icons.security_outlined,
              content:
                  'Social media links open only when you select them. Share App opens your device share sheet with the app link.',
            ),
            const SizedBox(height: 16),
            _buildSectionCard(
              context: context,
              title: '3. Clearing local data',
              icon: Icons.delete_outline,
              content:
                  'You can clear saved history from the calculator history screen. Android app settings can clear the app’s stored preferences, including its theme setting.',
            ),
            const SizedBox(height: 16),
            _buildSectionCard(
              context: context,
              title: '4. Analytics',
              icon: Icons.verified_user_outlined,
              content:
                  'MS Calculator does not include advertising or analytics SDKs.',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({
    required BuildContext context,
    required String title,
    required IconData icon,
    required String content,
  }) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.brightness == Brightness.dark
              ? Colors.grey.shade800
              : Colors.grey.shade300,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: theme.colorScheme.primary),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: TextStyle(
                fontSize: 13,
                height: 1.5,
                color: theme.brightness == Brightness.dark
                    ? Colors.grey.shade300
                    : Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
