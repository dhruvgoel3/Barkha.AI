import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarkhaAIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFEDFD),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),

                  // Main card container
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: 350),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Blue gradient header section
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF218AF6), Color(0xFF03B3DC)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              // Rain cloud icon with border
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.cloudy_snowing,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),

                              SizedBox(height: 25),

                              // Title
                              Text(
                                'Smart Rainwater Harvesting',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),

                              SizedBox(height: 8),

                              // Barkha.AI title
                              Text(
                                'Barkha.AI',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              SizedBox(height: 25),

                              // Three small circular icons
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildSmallIcon(Icons.analytics_outlined),
                                  _buildSmallIcon(Icons.water_drop_outlined),
                                  _buildSmallIcon(Icons.settings_outlined),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // White content section
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              // Description text
                              Text(
                                'Barkha.AI provides you personalized assessment and design based on user inputs, GIS data, and image analysis instead of auto-activating hardware or remote water handling.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  height: 1.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(height: 30),

                              // Feature list
                              _buildFeatureItem(
                                'Personalized rooftop and site analysis',
                              ),
                              SizedBox(height: 16),
                              _buildFeatureItem(
                                'GIS-powered rainfall and water yield analytics',
                              ),
                              SizedBox(height: 16),
                              _buildFeatureItem('Automated report generation'),
                              // Progress indicator
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30, left: 30),
                          child: Row(
                            children: [
                              Container(
                                height: 5,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "68%",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSmallIcon(IconData icon) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
      ),
      child: Icon(icon, color: Colors.white.withOpacity(0.8), size: 18),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 2),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, color: Colors.white, size: 12),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
