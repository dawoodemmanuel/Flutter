import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> _imageURL = [
    'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNtYXJ0cGhvbmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1610465299993-e6675c9f9efa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFjYm9vayUyMHByb3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1598550463415-d397fdddc3e0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGdhbWluZyUyMHBjfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1592991538534-00972b6f59ab?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrbGlnaHQlMjBrZXlib2FyZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1501066927591-314112b5888e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWVyY2VkZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1617788138017-80ad40651399?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cm9hZHN0ZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1579674862029-0c95379d570c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d2lyZWxlc3MlMjBoZWFkcGhvbmVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1508357941501-0924cf312bbd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW90b3JiaWtlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8eWFjaHR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1583863788434-e58a36330cf0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2hhcmdlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'
  ];

  List xyz = [
    "Note 20 Ultra",
    "Macbook Air",
    "Gaming PC",
    "Backlit Keyboard",
    "Mercedes",
    "RoadStar",
    "Wireless Headphone",
    "Motor Bike",
    "Yacht",
    "Charger"
  ];

  Widget imageSlider(var i) {
    return Container(
      width: 280,
      child: Card(
        child: Wrap(
          children: [
            Image.network(_imageURL[i]),
            ListTile(
                title: Text('${xyz[i]}'),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    child: Row(children: [
                      SmoothStarRating(
                        isReadOnly: false,
                        size: 18,
                        color: Colors.yellow,
                        borderColor: Colors.yellow,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                      Text("5.0(24 Reviews)"),
                    ]),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text("Ecom App UI",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_alert,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 7.0, left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Items",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text("View More",
                      style: TextStyle(fontSize: 15, color: Colors.purple))
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 2),
                height: 100,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  imageSlider(0),
                  imageSlider(1),
                  imageSlider(2),
                  imageSlider(3)
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("More Categories",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            // ListView(
            //   shrinkWrap: true,
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     ListTile(
            //       title: Text("Clothes"),
            //       subtitle: Text("5 items"),
            //     ),
            //     ListTile(
            //       title: Text("Electronic"),
            //       subtitle: Text("20 items"),
            //     ),
            //     ListTile(
            //       title: Text("Households"),
            //       subtitle: Text("9 items"),
            //     ),
            //     ListTile(
            //       title: Text("Appliances"),
            //       subtitle: Text("5 items"),
            //     ),
            //     ListTile(
            //       title: Text("Others"),
            //       subtitle: Text("15 items"),
            //     )
            //   ],
            // ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Items",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("View More",
                      style: TextStyle(fontSize: 15, color: Colors.purple))
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(_imageURL.length, (index) {
                    return imageSlider(index);
                  })),
            )
          ],
        ));
  }
}
