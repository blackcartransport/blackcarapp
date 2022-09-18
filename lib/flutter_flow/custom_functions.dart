import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double total(
  double baseRate,
  double totalHours,
  double hourRate,
) {
  return (totalHours * hourRate) + baseRate;
}

LatLng getDeviceLocation(LatLng? deviceLocation) {
  if (deviceLocation == null ||
      (deviceLocation.latitude == 0 && deviceLocation.longitude == 0)) {
    return const LatLng(32.78457281077711, -96.7978150096924);
  }
  return deviceLocation;
}
