import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_android/geolocator_android.dart';

class Location{
  late double latitude;
  late double longitude;


  Future <void> getCurrentLocation () async {

    try{
      await Geolocator.openAppSettings();
      await Geolocator.openLocationSettings();
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;

      print(position);
    }catch(e){
      print(e);

    }

  }



}