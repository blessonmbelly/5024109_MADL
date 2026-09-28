import 'package:flutter/material.dart';

void main() {
  runApp(const FoodExplorerApp());
}

class FoodExplorerApp extends StatelessWidget {
  const FoodExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Explorer',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F9FF),
      ),
      home: const FoodHomePage(),
    );
  }
}

class FoodHomePage extends StatelessWidget {
  const FoodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.restaurant),
            SizedBox(width: 10),
            Text(
              'Foodie',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Favorites',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Favorites opened!'),
                ),
              );
            },
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF1565C0),
                        Color(0xFF42A5F5),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Discover Great Food 🍴',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Find delicious meals and '
                              'explore amazing flavors.',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.restaurant_menu,
                        color: Colors.white,
                        size: 52,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                const Text(
                  'Popular Choices',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF263238),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: foodCard(
                        icon: Icons.local_pizza,
                        name: 'Pizza',
                        type: 'Italian',
                        background: const Color(0xFFE3F2FD),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: foodCard(
                        icon: Icons.lunch_dining,
                        name: 'Burger',
                        type: 'Fast Food',
                        background: const Color(0xFFE8F5E9),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(
                      child: foodCard(
                        icon: Icons.ramen_dining,
                        name: 'Noodles',
                        type: 'Asian',
                        background: const Color(0xFFFFF3E0),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: foodCard(
                        icon: Icons.cake,
                        name: 'Dessert',
                        type: 'Sweet',
                        background: const Color(0xFFF3E5F5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                const Center(
                  child: Text(
                    'Why Choose Us?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF263238),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue.shade100,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: featureItem(
                          icon: Icons.search,
                          title: 'Discover',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: featureItem(
                          icon: Icons.star,
                          title: 'Ratings',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: featureItem(
                          icon: Icons.delivery_dining,
                          title: 'Delivery',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.blue,
                        size: 30,
                      ),
                      const SizedBox(width: 12),
                      const Flexible(
                        child: Text(
                          'Food Tip: Try something new '
                          'whenever you get the chance. '
                          'You might discover your next '
                          'favorite dish!',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Color(0xFF37474F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Let’s find some delicious food! 🍔',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.explore),
                    label: const Text(
                      'Explore Food',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget foodCard({
  required IconData icon,
  required String name,
  required String type,
  required Color background,
}) {
  return Container(
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(18),
      border: Border.all(
        color: Colors.blue.withValues(alpha: 0.08),
      ),
    ),
    child: Column(
      children: [
        Center(
          child: Icon(
            icon,
            size: 42,
            color: Colors.blue.shade700,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF263238),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          type,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}

Widget featureItem({
  required IconData icon,
  required String title,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 4,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFFF5F9FF),
      borderRadius: BorderRadius.circular(14),
    ),
    child: Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 28,
        ),
        const SizedBox(height: 7),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}