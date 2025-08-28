import 'package:flutter/material.dart';
import 'dart:math' as math;

class PropertyDetailScreen extends StatelessWidget {
  final String imageUrl;

  const PropertyDetailScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.share, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Luxury Apartment in Mumbai',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Spacious 3BHK apartment with stunning city views',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price', style: TextStyle(color: Colors.grey)),
                      Text('₹2.5 Cr', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Size', style: TextStyle(color: Colors.grey)),
                      Text('1800 sq ft', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bedrooms', style: TextStyle(color: Colors.grey)),
                      Text('3', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bathrooms', style: TextStyle(color: Colors.grey)),
                      Text('2', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  const Text(
                    'Amenities',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    children: const [
                      Chip(label: Text('Swimming Pool')),
                      Chip(label: Text('Gym')),
                      Chip(label: Text('Parking')),
                      Chip(label: Text('Security')),
                      Chip(label: Text('Clubhouse')),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'This luxurious apartment offers a perfect blend of comfort and style. Located in a prime area, it provides easy access to all major amenities and attractions. The apartment features a modern kitchen, spacious living area, and well-appointed bedrooms.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  const VastuCompliance(),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  const Text(
                    'Location',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuCScfhYD_2CujvF5m1D-GbaGaYCVpTRe-6q8KLtp2p-_0u17sBTWCfI2LfzpFOVqFTGvrbzcR4U9ndD0gCJUtjW-jK0i5-M37f5NrpKUvx9tfvO-SbddA0S8jaOuYtYqfFgGhuircfuo0-H1Obs7Sxk_CYADMzlRqBrmxVkPxtJGh32bVQ_cBaDgPH6ctKtawpuHaKTG38_AyS50OMlOSDFZUE68fZlslE328FboEIZWOwsXIkfd1YQ29a2DktDjohEYQ_Kr8mkQF4'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  const Text(
                    'Contact Agent',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuDvBTK8yCGHJIqYyiNuo89XIcXgW37P1f8u_Or_2RtOC1hRR-at_vWeelL3RRasOGhamCBqRIIwAyTZtbXO7iQqxoEG3dv3wiPl4o3vxMqofXwTB3yuZuHPop5e63NjVDWM21pPz9TyspvmXeycue93zKwbCjfZI-XiIzxi5kKNspCMWOkaQ4QD9GwEedDcrfl6ldfKr5mtI5Ap0WsSnvtHT8iscSBgP9MM0_tSf27IBF1LfAgmLM4v3Q3I1fUcra0wLt9f0E-iLrM'),
                      ),
                      const SizedBox(width: 16),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Priya Sharma', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Real Estate Agent', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF40E0D0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text('Call'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text('Message', style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VastuCompliance extends StatelessWidget {
  const VastuCompliance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Vastu Compliance', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.check_circle, color: Colors.green),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'This property is Vastu compliant.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Vastu Shastra is an ancient Indian system of architecture and design aimed at creating harmonious living spaces.',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VastuDetail(icon: Icons.explore, title: 'Facing', value: 'North-East'),
                    VastuDetail(icon: Icons.home, title: 'Main Entrance', value: 'Positive Zone'),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VastuDetail(icon: Icons.kitchen, title: 'Kitchen Placement', value: 'South-East'),
                    VastuDetail(icon: Icons.water_drop, title: 'Water Source', value: 'North-East'),
                  ],
                ),
                const SizedBox(height: 16),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View Detailed Vastu Report',
                      style: TextStyle(color: Color(0xFFFF9933)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Compass Direction', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        const Center(
          child: Compass(),
        ),
      ],
    );
  }
}

class VastuDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const VastuDetail({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFFFF9933)),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}

class Compass extends StatelessWidget {
  const Compass({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(200, 200),
      painter: CompassPainter(),
    );
  }
}

class CompassPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final paint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawCircle(center, radius, paint);

    final textStyle = const TextStyle(color: Colors.black, fontSize: 16);
    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    final directions = {
      'N': 0.0,
      'NE': 45.0,
      'E': 90.0,
      'SE': 135.0,
      'S': 180.0,
      'SW': 225.0,
      'W': 270.0,
      'NW': 315.0,
    };

    directions.forEach((dir, angle) {
      final radian = (angle - 90) * (math.pi / 180);
      final textSpan = TextSpan(text: dir, style: textStyle);
      textPainter.text = textSpan;
      textPainter.layout();
      final offset = Offset(
        center.dx + (radius - 20) * math.cos(radian) - textPainter.width / 2,
        center.dy + (radius - 20) * math.sin(radian) - textPainter.height / 2,
      );
      textPainter.paint(canvas, offset);
    });

    final needlePaint = Paint()
      ..color = const Color(0xFFFF9933)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(center.dx, center.dy - radius * 0.8);
    path.lineTo(center.dx - 10, center.dy);
    path.lineTo(center.dx + 10, center.dy);
    path.close();

    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(45 * math.pi / 180);
    canvas.translate(-center.dx, -center.dy);
    canvas.drawPath(path, needlePaint);
    canvas.restore();

    final centerCirclePaint = Paint()..color = const Color(0xFFFF9933);
    canvas.drawCircle(center, 10, centerCirclePaint);
    final centerCircleTextPainter = TextPainter(
      text: const TextSpan(
        text: 'NE',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      textDirection: TextDirection.ltr,
    );
    centerCircleTextPainter.layout();
    centerCircleTextPainter.paint(
      canvas,
      Offset(
        center.dx - centerCircleTextPainter.width / 2,
        center.dy - centerCircleTextPainter.height / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
