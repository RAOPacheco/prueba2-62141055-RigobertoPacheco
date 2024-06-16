import 'package:flutter/material.dart';
import '../models/doctor.dart';
import 'appointment_form_page.dart';
import '../widgets/doctor_card.dart';

class DoctorListPage extends StatelessWidget {
  final List<Doctor> doctors = [
    Doctor(
      name: 'Dr. Juan Pérez',
      imageUrl: 'https://via.placeholder.com/150',
      availableDate: '2023-06-20',
      availableTime: '10:00 AM - 12:00 PM',
    ),
    Doctor(
      name: 'Dra. Ana Martínez',
      imageUrl: 'https://via.placeholder.com/150',
      availableDate: '2023-06-21',
      availableTime: '02:00 PM - 04:00 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctores Disponibles'),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return DoctorCard(
            doctor: doctor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AppointmentFormPage(doctor: doctor),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
