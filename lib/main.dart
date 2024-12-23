import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image(
                      width:100,
                      height:100,
                      image: NetworkImage("https://scontent.fbkk22-1.fna.fbcdn.net/v/t39.30808-6/470138869_557333330440945_8456716460057030279_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=RNvVZG72EL0Q7kNvgElLOwR&_nc_zt=23&_nc_ht=scontent.fbkk22-1.fna&_nc_gid=Aaa3RRVm6iYS4pE6ov4ptGw&oh=00_AYD0_40wPL65I6iwmsh4AW9bAYG8WHZBY0LkGA041vqxlg&oe=676EE3E7")
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Phunyaphat",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Promgon",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("White",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text("Hobby: play a game"),
              Text("Food: Shabu"),
              Text("Birthplace: Nan"),
              SizedBox(height: 24),
              Text(
                "Education:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Elementary: Ban Na Fa School."),
                  Text("Year: 59"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Primary: Ban Na Fa School."),
                  Text("Year: 59"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("High School: Tha Wang Pha Pittayakhom School."),
                  Text("Year: 65"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Undergrad: Naresuan University."),
                  Text("Year: 69"),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
