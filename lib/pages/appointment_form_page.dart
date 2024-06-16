import 'package:flutter/material.dart';
import '../models/doctor.dart';

class AppointmentFormPage extends StatelessWidget {
  final Doctor doctor;

  AppointmentFormPage({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendar Cita'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              items: ['Clinica 1', 'Clinica 2', 'Clinica 3']
                  .map((clinic) => DropdownMenuItem(
                        value: clinic,
                        child: Text(clinic),
                      ))
                  .toList(),
              onChanged: (value) {},
              decoration: InputDecoration(labelText: 'Seleccione la clínica'),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Fecha',
                hintText: doctor.availableDate,
              ),
              initialValue: doctor.availableDate,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Horario',
                hintText: doctor.availableTime,
              ),
              initialValue: doctor.availableTime,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica para agendar la cita
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Cita agendada con éxito'),
                  ),
                );
              },
              child: Text('Agendar'),
            ),
          ],
        ),
      ),
    );
  }
}
