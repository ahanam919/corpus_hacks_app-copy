import 'package:corpus_hacks_app/dummydata.dart';
import 'package:corpus_hacks_app/location_input.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:geolocator_platform_interface/src/enums/location_accuracy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Corpus Hacks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  /*
  bool haspermission = false;
  bool serviceEnabled = false;
  late LocationPermission permission;
  late Position position;
  String long = "", lat = "";
  late StreamSubscription<Position> positionStream;

  checkGPS() async {
    PermissionStatus permissionGranted;
    LocationData locationData;
    Location location = Location();
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    if (serviceEnabled) {
      if (permissionGranted == LocationPermission.denied) {
        //deny: no work :(
        haspermission = false;
      } else {
        haspermission = true;
      }
      if (haspermission) {
        setState(() {
          //refresh the UI
        });
        getLocation();
      }
    }
    setState(() {
      //refresh the UI
    });
  }

  getLocation() async {
    position = await Geolocator.getCurrentPosition();
    long = position.longitude.toString();
    lat = position.latitude.toString();
    setState(() {}); //refreshe

    LocationSettings locationSettings = LocationSettings(distanceFilter: 100);

    StreamSubscription<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position position) {
      long = position.longitude.toString();
      lat = position.latitude.toString();

      setState(() {
        //refresh UI on update
      });
    });
  }

  
  LocationData? _pickedLoc;
  var _isGettingLoc = false;
  void _getCurrentLocation() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    setState(() {
      _isGettingLoc = true;
    });
    locationData = await location.getLocation();
    _pickedLoc = locationData;
    setState(() {
      _isGettingLoc = false;
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        /*body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 170,
              width: double.infinity,
              alignment: Alignment.center,
              child: previewContent,
            ),
            Row(
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.location_on),
                  label: const Text(
                    'get curr location',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      alignment:
                          Alignment.centerLeft, // <-- had to set alignment
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero), // <-- had to set padding to zero
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo)),
                  onPressed: () => {_getCurrentLocation, print(_pickedLoc)},
                )
              ],
            )
          ],
        ),
      ),*/
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(50),
            child: Column(children: [
              LocationInput(),
              const SizedBox(height: 40),
              const Text('OR enter your location below'),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter location',
                ),
              ),
              ElevatedButton(
                  onPressed: () => {
                        const SizedBox(height: 40),
                        const Text('accessibility: 4'),
                        const Text('latitude: 10'),
                        const Text('longitude: 20'),
                      },
                  child: Text('submit'))
            ])));
  }
}
