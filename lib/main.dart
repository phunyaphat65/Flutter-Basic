import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Resume',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal,
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Section
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          "https://scontent.fbkk22-1.fna.fbcdn.net/v/t39.30808-6/470138869_557333330440945_8456716460057030279_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=RNvVZG72EL0Q7kNvgElLOwR&_nc_zt=23&_nc_ht=scontent.fbkk22-1.fna&_nc_gid=Aaa3RRVm6iYS4pE6ov4ptGw&oh=00_AYD0_40wPL65I6iwmsh4AW9bAYG8WHZBY0LkGA041vqxlg&oe=676EE3E7",
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Phunyaphat Promgon White",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[900],
                        ),
                      ),
                      SizedBox(height: 8),
                      Divider(thickness: 1.5, color: Colors.teal[200]),
                    ],
                  ),
                ),
                SizedBox(height: 24),

                // Personal Information Section
                Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 12),
                Card(
                  color: Colors.teal[50],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDetailRow("Hobby", "Play a game"),
                        _buildDetailRow("Food", "Shabu"),
                        _buildDetailRow("Birthplace", "Nan"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),

                // Education Section
                Text(
                  "Education",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 12),
                Card(
                  color: Colors.teal[50],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        _buildEducationRow("Elementary", "Ban Na Fa School", "59"),
                        _buildEducationRow("Primary", "Ban Na Fa School", "59"),
                        _buildEducationRow("High School", "Tha Wang Pha Pittayakhom School", "65"),
                        _buildEducationRow("Undergrad", "Naresuan University", "69"),
                      ],
                    ),
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

// Helper widget to build personal detail rows
Widget _buildDetailRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal[800]),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ],
    ),
  );
}

// Helper widget to build education rows
Widget _buildEducationRow(String level, String institution, String year) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            "$level: $institution",
            style: TextStyle(fontSize: 16, color: Colors.black87),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          "Year: $year",
          style: TextStyle(fontSize: 16, color: Colors.teal[800]),
        ),
      ],
    ),
  );
}
