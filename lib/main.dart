import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red.shade500,
          appBar: AppBar(
            title: const Text("Weather Forecast"),
            backgroundColor: Colors.red.shade500,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                searchBar(),
                cityDetail(),
                temperatureDetail(),
                extraWeatherDetail(),
                daysText(),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
                  child: SizedBox(
                    height: 100,
                    child: horizontalListView(),
                  ),
                ),
              ],
            ),
          )),
    ),
  );
}

Widget searchBar() {
  return Container(
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          labelText: 'Enter City Name',
          labelStyle: TextStyle(color: Colors.white),
          enabled: true,
          // border: UnderlineInputBorder(),
          enabledBorder: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget cityDetail() {
  return Container(
    child: Padding(
      padding: EdgeInsets.all(0),
      child: Center(
        child: Column(children: [
          Text(
            "Murmansk Oblast, RU",
            style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Friday, Mar 20, 2020",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          )
        ]),
      ),
    ),
  );
}

Widget temperatureDetail() {
  return Container(
    child: Padding(
      padding: EdgeInsets.only(top: 25.0, bottom: 20.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "14 °F",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 50.0,
                  ),
                ),
                Text(
                  "Light Snow".toUpperCase(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 16.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget extraWeatherDetail() {
  return Container(
    child: Padding(
      padding: EdgeInsets.only(top: 20.0, left: 100.0, right: 100.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.snowmobile,
                  color: Colors.white,
                ),
                Text(
                  "5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w200),
                ),
                Text(
                  "km/h",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w200),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.snowing,
                  color: Colors.white,
                ),
                Text(
                  "3",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w200),
                ),
                Text(
                  "%",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w200),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.snowing,
                  color: Colors.white,
                ),
                Text(
                  "20",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w200),
                ),
                Text(
                  "%",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget daysText() {
  return Center(
    child: Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Text(
        "7 day weather forecast".toUpperCase(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w200,
          fontSize: 18.0,
        ),
      ),
    ),
  );
}

Widget horizontalListView() {
  final List<int> lists = List<int>.generate(4, (index) => index);
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemExtent: 200.0,
    itemCount: lists.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Container(
          color: Color.fromARGB(
              255, 255, 255, 255), // Alpha value set to 255 (fully opaque)
          width: 200.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Friday"),
                Row(
                  children: [
                    Text("6 °F"),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
// class HorizontalListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return _horizontalListView();
//   }
// }

// Widget _horizontalListView() {
//   final List _days = ['Friday', 'Saturday', 'Sunday'];
//   return ListView.builder(
//     scrollDirection: Axis
//         .horizontal, // Add this line to make the ListView scroll horizontally.
//     itemCount: _days.length,
//     itemExtent: 300.0,
//     itemBuilder: (context, index) {
//       return Container(
//         width: 100, // Set the width of each item in the horizontal list.
//         color: Colors.blue, // Add some background color for visibility.
//         child: Center(
//           child: Text(
//             _days[index],
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }
