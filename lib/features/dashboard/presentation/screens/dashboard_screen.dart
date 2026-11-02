import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/ui/app_more_menu.dart';
import '../../../../core/navigation/app_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tools = [
      {
        'title': 'Calculator',
        'icon': Icons.calculate,
        'color': Colors.orange,
        'route': AppRoutes.calculator,
      },
      {
        'title': 'Age Calculator',
        'icon': Icons.cake,
        'color': Colors.pink,
        'route': AppRoutes.ageCalc,
      },
      {
        'title': 'BMI Calculator',
        'icon': Icons.monitor_weight,
        'color': Colors.green,
        'route': AppRoutes.bmiCalc,
      },
      {
        'title': 'Unit & All Converters',
        'icon': Icons.sync_alt,
        'color': Colors.blue,
        'route': AppRoutes.converterList,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MS Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          AppMoreMenuButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemCount: tools.length,
          itemBuilder: (context, index) {
            final tool = tools[index];
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: theme.brightness == Brightness.dark
                      ? Colors.grey.shade800
                      : Colors.grey.shade300,
                ),
              ),
              child: InkWell(
                onTap: () => context.push(tool['route'] as String),
                borderRadius: BorderRadius.circular(16),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(tool['icon'] as IconData, color: tool['color'] as Color, size: 36),
                      const SizedBox(height: 8),
                      Text(
                        tool['title'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
