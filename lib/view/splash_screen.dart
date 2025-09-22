import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE8F4F8), Color(0xFFF0F8FF)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Decorative circles
              Stack(
                children: [
                  // Top right blue circle
                  Positioned(
                    top: 50,
                    right: 30,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Color(0xFF4A90E2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // Left blue circle
                  Positioned(
                    top: 180,
                    left: 20,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFF4A90E2).withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),

                  // Main content
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        SizedBox(height: 120),

                        // Water drop logo with calendar icon
                        Image.asset(
                          "assets/Screenshot_2025-09-21_015737-removebg-preview.png",
                        ),

                        SizedBox(height: 20),

                        // Barkha.AI title
                        Text(
                          'Barkha.AI',
                          style: GoogleFonts.inter(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            letterSpacing: -0.5,
                          ),
                        ),

                        SizedBox(height: 16),

                        // Tagline
                        Text(
                          'Turning Every Drop Into Savings',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                          ),
                        ),

                        SizedBox(height: 60),

                        // Three feature icons with labels
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildFeatureIcon(
                              Icons.visibility_outlined,
                              'Visualize',
                              Color(0xFF4A90E2),
                            ),
                            _buildFeatureIcon(
                              Icons.analytics_outlined,
                              'Analyze',
                              Color(0xFF52C41A),
                            ),
                            _buildFeatureIcon(
                              Icons.trending_up,
                              'Optimize',
                              Color(0xFFEB2F96),
                            ),
                          ],
                        ),

                        SizedBox(height: 50),

                        // Description text
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Turn your rooftop photo into actionable blueprints and smart water savings with instant, personalized insights',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.grey,
                              height: 1.5,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        SizedBox(height: 40),

                        // Three dots indicator
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildDot(true),
                            SizedBox(width: 8),
                            _buildDot(false),
                            SizedBox(width: 8),
                            _buildDot(false),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 28),
        ),
        SizedBox(height: 12),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF4A90E2) : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}
