import 'package:flutter/material.dart';
import 'package:time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: ''),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: ''),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: ''),
    WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: ''),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: ''),
    WorldTime(url: 'Asia/seoul', location: 'Seoul', flag: ''),
    WorldTime(url: 'America/New_york', location: 'New York', flag: ''),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Location",
          style: TextStyle(
            fontFamily: 'OpenSans',
            //fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
