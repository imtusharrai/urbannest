import 'package:flutter/material.dart';
import 'package:urbannest/screens/property_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(Icons.location_on, color: Color(0xFFFF9933)),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Text(
              'Mumbai, India',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Color(0xFFFF9933)),
                onPressed: () {},
              ),
              Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                ),
              )
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for \'4 BHK Villa\'',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: const [FeaturedProperties(), Categories(), JustForYou()],
      ),
    );
  }
}

class FeaturedProperties extends StatelessWidget {
  const FeaturedProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 0.0),
          child: Text(
            'Featured Properties',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                PropertyCard(
                  title: 'Urban Oasis',
                  subtitle: '2 BHK Apartment',
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDbGIL23WdZFy_nrRQjU3Y922bR8mreve9ucXF5LgWy6CC6t5p6XIm_oynHZ-IGT023BvWDKbCx4ywhw5jw3OlIm9eVQYL30AEDYqcjU3JSzNjzmY85s7qGkDdP9Blzzwjo8zJbJC2IcJmqw4vQZJwq0irQzgNPDizcnvSh-TL7fveovFf89Oy3k3IQccV960CHjNCmPOmcAHVy-a2egCR0AvJIQH3FVmHJWtyzmudISyHhZQmKJkfUdB3Z7ns5XXnv8XWGoo4NPDk',
                ),
                PropertyCard(
                  title: 'Luxury Living',
                  subtitle: '4 BHK Villa',
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuCr_2SfeBrfcVgmuTpkIB8tnmLgltHuogNEx3_Y5C2e9nmWm53i63rpzRaWATQB0vQRvDeq-vyqrs8ab0ZA8wk879WlWZO3rVs-gHhsR3NwJ4f2_ddvlSxj0mCWGKAMBzwlY6bbJvLes5tno2gOl_w13Gcp8FACEYvDdAf1s6QeT6GXmtjngkIMzGzj3KkTXAv5ovFu82UHgMeuJbwomAOtpnXDbdcUsWlUm0zWW33qTDhB1gbB0-cFxIuhm73RRtM3Ocj30F-t6iU',
                ),
                PropertyCard(
                  title: 'Family Retreat',
                  subtitle: '3 BHK House',
                  imageUrl:
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuCs-IaedNwRe3FEcglJITOL1DbZtN757yB4x6rkmYCkQRsmrGXKKCHYV6_fORoS8n3rfI_VxW8lF67U72nSCtmu2RhbqNfueSE7h8jj-4Ndl3TXojgkYSjHFlZwlNolcx01RHg7424W4649N-Meg3lpRHYVza8Yakehrpyy8zn7tczhgKK0MGDWeV6DG6lk0bDyrFOkF_Eh3tpNDfktbrmB667T89R3YkFDXX3QG91axN8eg7NgoSyvojUx8ZRk0GxKnYCEW5uba-g',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CategoryCard(icon: Icons.apartment, label: 'Apartments'),
              CategoryCard(icon: Icons.villa, label: 'Villas'),
              CategoryCard(icon: Icons.landscape, label: 'Plots'),
              CategoryCard(icon: Icons.business, label: 'Commercial'),
            ],
          ),
        ],
      ),
    );
  }
}

class JustForYou extends StatelessWidget {
  const JustForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Just For You in Mumbai',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'View All',
                  style: TextStyle(color: Color(0xFFFF9933)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const JustForYouCard(
            price: '₹3.5 Cr',
            title: 'Bandra Sea View',
            location: 'Bandra West, Mumbai',
            bedrooms: 4,
            area: 2200,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDbGIL23WdZFy_nrRQjU3Y922bR8mreve9ucXF5LgWy6CC6t5p6XIm_oynHZ-IGT023BvWDKbCx4ywhw5jw3OlIm9eVQYL30AEDYqcjU3JSzNjzmY85s7qGkDdP9Blzzwjo8zJbJC2IcJmqw4vQZJwq0irQzgNPDizcnvSh-TL7fveovFf89Oy3k3IQccV960CHjNCmPOmcAHVy-a2egCR0AvJIQH3FVmHJWtyzmudISyHhZQmKJkfUdB3Z7ns5XXnv8XWGoo4NPDk',
          ),
          const JustForYouCard(
            price: '₹2.1 Cr',
            title: 'Powai Lake Heights',
            location: 'Powai, Mumbai',
            bedrooms: 3,
            area: 1800,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuCr_2SfeBrfcVgmuTpkIB8tnmLgltHuogNEx3_Y5C2e9nmWm53i63rpzRaWATQB0vQRvDeq-vyqrs8ab0ZA8wk879WlWZO3rVs-gHhsR3NwJ4f2_ddvlSxj0mCWGKAMBzwlY6bbJvLes5tno2gOl_w13Gcp8FACEYvDdAf1s6QeT6GXmtjngkIMzGzj3KkTXAv5ovFu82UHgMeuJbwomAOtpnXDbdcUsWlUm0zWW33qTDhB1gbB0-cFxIuhm73RRtM3Ocj30F-t6iU',
          ),
        ],
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const PropertyCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PropertyDetailScreen(imageUrl: imageUrl)),
        );
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                imageUrl,
                height: 120,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryCard({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xFFFF9933).withAlpha(51),
          child: Icon(icon, color: const Color(0xFFFF9933), size: 30),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class JustForYouCard extends StatelessWidget {
  final String price;
  final String title;
  final String location;
  final int bedrooms;
  final int area;
  final String imageUrl;

  const JustForYouCard({
    super.key,
    required this.price,
    required this.title,
    required this.location,
    required this.bedrooms,
    required this.area,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PropertyDetailScreen(imageUrl: imageUrl),
          ),
        );
      },
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(location, style: const TextStyle(color: Colors.grey)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.king_bed, size: 16, color: Colors.grey),
                        const SizedBox(width: 4),
                        Text('$bedrooms BHK'),
                        const SizedBox(width: 16),
                        const Icon(
                          Icons.area_chart,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Text('$area sqft'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
