import 'package:flutter/material.dart';
import 'pages/doctor_list_page.dart';

void main() {
  runApp(HospitalAppointmentApp());
}

class HospitalAppointmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Appointment App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: DoctorListPage(),
    );
  }
}
