import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Language',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space below the title

              // Language options
              Column(
                children: [],
              ),
              SizedBox(height: 10),
              _buildSettingOption(context, 'English', true, false),
              SizedBox(height: 10),
              _buildSettingOption(context, 'Urdu', true, false),
              SizedBox(height: 10),
              _buildSettingOption(context, 'Bangla', false, false),
              SizedBox(height: 10),
              _buildSettingOption(context, 'French', false, false),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingOption(
      BuildContext context, String title, bool showToggle, bool isPermission) {
    return GestureDetector(
      onTap: () {
        if (isPermission) {
          // Navigate to Permission screen
        } else {
          // Handle other options here (if needed)
          print('$title selected'); // For demonstration purposes
        }
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 4.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            if (showToggle) Icon(Icons.toggle_on, size: 24, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
