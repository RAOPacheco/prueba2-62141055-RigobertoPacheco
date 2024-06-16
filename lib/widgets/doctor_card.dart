import 'package:flutter/material.dart';
import '../models/doctor.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  final VoidCallback onTap;

  DoctorCard({required this.doctor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(doctor.imageUrl),
        title: Text(doctor.name),
        subtitle: Text(
            'Fecha: ${doctor.availableDate}\nHorario: ${doctor.availableTime}'),
        onTap: onTap,
      ),
    );
  }
}
