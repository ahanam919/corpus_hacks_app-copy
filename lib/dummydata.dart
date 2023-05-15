import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
import 'place.dart';

const availablePlaces = [
  PlaceLocation(
      latitude: 10, longitude: 20, address: "position 1", accessibility: 4),
  PlaceLocation(
      latitude: 20, longitude: 30, address: "position 2", accessibility: 1),
  PlaceLocation(
      latitude: 30, longitude: 40, address: "position 3", accessibility: 3),
  PlaceLocation(
      latitude: 40, longitude: 50, address: "position 4", accessibility: 4),
  PlaceLocation(
      latitude: 50, longitude: 60, address: "position 5", accessibility: 5),
  PlaceLocation(
      latitude: 60, longitude: 70, address: "position 6", accessibility: 4),
  PlaceLocation(
      latitude: 70, longitude: 80, address: "position 7", accessibility: 2),
  PlaceLocation(
      latitude: 80, longitude: 90, address: "position 8", accessibility: 1),
  PlaceLocation(
      latitude: 90, longitude: 100, address: "position 9", accessibility: 3),
  PlaceLocation(
      latitude: 100, longitude: 110, address: "position 10", accessibility: 5),
];
