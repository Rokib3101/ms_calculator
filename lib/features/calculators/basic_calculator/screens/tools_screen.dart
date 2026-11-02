import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/navigation/app_router.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tools = [
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
        'title': 'Length',
        'icon': Icons.straighten,
        'color': Colors.deepOrange,
        'route': AppRoutes.converterLength,
      },
      {
        'title': 'Area',
        'icon': Icons.square_foot,
        'color': Colors.green,
        'route': AppRoutes.converterArea,
      },
      {
        'title': 'Volume',
        'icon': Icons.opacity,
        'color': Colors.pink,
        'route': AppRoutes.converterVolume,
      },
      {
        'title': 'Mass',
        'icon': Icons.scale,
        'color': Colors.indigo,
        'route': AppRoutes.converterMass,
      },
      {
        'title': 'Temperature',
        'icon': Icons.thermostat,
        'color': Colors.orange,
        'route': AppRoutes.converterTemp,
      },
      {
        'title': 'Time',
        'icon': Icons.timer,
        'color': Colors.blue,
        'route': AppRoutes.converterTime,
      },
      {
        'title': 'Speed',
        'icon': Icons.speed,
        'color': Colors.red,
        'route': AppRoutes.converterSpeed,
      },
      {
        'title': 'Pressure',
        'icon': Icons.compress,
        'color': Colors.purple,
        'route': AppRoutes.converterPressure,
      },
      {
        'title': 'Energy',
        'icon': Icons.electric_bolt,
        'color': Colors.indigo,
        'route': AppRoutes.converterEnergy,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: const Text(
          'Calculators & Converters',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.1,
        ),
        itemCount: tools.length,
        itemBuilder: (context, index) {
          final item = tools[index];
          final color = item['color'] as Color;
          return Card(
            elevation: 2,
            shadowColor: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.grey.shade300),
            ),
            child: InkWell(
              onTap: () => context.push(item['route'] as String),
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(item['icon'] as IconData, color: color, size: 32),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item['title'] as String,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
