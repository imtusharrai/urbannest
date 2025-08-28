import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.55,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuBSWg1wjmczz437pJtmpAatEsuwcBS1x-DdOAE1wMV3Tct04XMabtnNVMllKB1ARtnpEd-KQmdh8v6U2RQKWZnFu9P5g9E0wo1AcVnnEuWc12aG_6XFd0gPecMUMtH15b3q8Sip3tBPlfQNJMNZ6yrVT1VwmTmpM2kRRRY3bNByr3Fdrd1KWrmBZ4CEHcFm8r_1u0mEClFAduWdSVq2BkFWM3D4sPugs5PejcBg_K2Z4BXBCZ6sPvZYlcQ_SHAMFtm2Ul-33PsO2nA',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8,
                      width: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF47B25),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6DFDB),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6DFDB),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Find Your Dream Home in India',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF181411),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Explore a wide range of properties across India, from bustling city apartments to serene countryside villas.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF8A7260), fontSize: 16),
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF47B25),
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      elevation: 5,
                      shadowColor: Colors.orange.withAlpha(128),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
