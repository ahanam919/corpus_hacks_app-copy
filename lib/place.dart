import 'dart:io';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceLocation {
  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.accessibility,
  });

  final double latitude;
  final double longitude;
  final String address;
  final int accessibility;
}

class Place {
  Place({
    required this.title,
    required this.image,
    // required this.location,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final File image;
  // final PlaceLocation location;
}
