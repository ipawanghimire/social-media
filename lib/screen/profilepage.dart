import 'package:complexui/screen/theme.dart';
import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: AppBar(
        backgroundColor: AppTheme.accentColor,
        title: Text('Profile',style: TextStyle(
          color: AppTheme.textColor
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage("https://res.cloudinary.com/doeglj63f/image/upload/v1686417103/profile_wtq84d.jpg"),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PAWAN GHIMIRE',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.laccentColor
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Computer Engineer',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'ipawanghimire@gmail.com',
                          style: TextStyle(fontSize: 16,color: Colors.grey,),

                        ),
                        Text(
                          '+9779860262619',
                          style: TextStyle(fontSize: 16,color: Colors.grey,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle('Education'),
                        _buildProfileInfo('Degree', 'Bachelors in Computer Engineering'),
                        _buildProfileInfo('University', 'Tribhuwan University, Advanced College of Engineering and Management'),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle('Skills'),
                        _buildBulletPoint('Flutter & Dart'),
                        _buildBulletPoint('Firebase'),
                        _buildBulletPoint('Node.js, Express & MongoDB'),
                        _buildBulletPoint('Python/ML'),
                        _buildBulletPoint('HTML/CSS/JS'),
                        _buildBulletPoint('AWS'),

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              _buildSectionTitle('About Me'),
              Text(
                'I am a hardworking and dedicated person who is always eager to learn new skills and technologies. Coding is my passion and I have been dreaming of becoming a professional developer since childhood. I enjoy solving challenging problems and creating innovative solutions with code.',
                style: TextStyle(fontSize: 16,color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppTheme.laccentColor
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.laccentColor,
            ),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(fontSize: 16,color: Colors.grey,),

          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5, right: 8),
          child: Text(
            '•',
            style: TextStyle(fontSize: 16,color: AppTheme.laccentColor),
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16,color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
