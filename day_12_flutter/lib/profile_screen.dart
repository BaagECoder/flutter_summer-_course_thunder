import "package:flutter/material.dart";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildProfileImage(context),
          _buildProfileDetails(context),
          _buildAction(context)
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          "assets/dog.jpg",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Wolfram Barkovich",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildDetailsRow("Age", "4"),
          _buildDetailsRow("Status", "GoodBoy"),
        ],
      ),
    );
  }

  Widget _buildAction(BuildContext) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children:[
            _buildIcon(Icons.restaurant, "Feed"),
            _buildIcon(Icons.favorite, "Pet"),

            _buildIcon(Icons.directions_walk, "Walk"),
          ],

      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Container(
      child: Row(
        children: [
          Text(
            "$heading",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("$value"),
        ],
      ),
    );
  }
  Widget _buildIcon(IconData icon, String text){
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Icon(icon, size: 40),
          Text(text),
        ],
      ),
    );
  }
  //
}
