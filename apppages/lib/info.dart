import 'package:flutter/material.dart';

class data extends StatelessWidget {
  const data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.account_circle_sharp,
              size: 140,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "User",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            subtitle: Text("dawoodemmanuel75@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              child: Text("Logout", style: TextStyle(color: Colors.purple)),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          ListTile(
            title: Text("ACCOUNT INFORMATION",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: Text("Full Name",
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Dawood Emmanuel"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("dawoodemmanuel75@gmail.com"),
          ),
          ListTile(
            title: Text("Phone", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("+0900-786 01"),
          ),
          ListTile(
            title:
                Text("Address", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("New York, Random Street House No 72"),
          ),
          ListTile(
            title:
                Text("Gender", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Male"),
          ),
          ListTile(
            title: Text("Date of Birth",
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("November 30,1998"),
          ),
        ],
      ),
    );
  }
}
