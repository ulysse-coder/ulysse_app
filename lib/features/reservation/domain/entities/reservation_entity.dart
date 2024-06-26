
import 'package:equatable/equatable.dart';
import 'package:ulysse_app/core/utilities/enum.dart';
import 'package:ulysse_app/features/reservation/data/models/vehicule_model.dart';

class ReservationEntity extends Equatable {
  const ReservationEntity({
    required this.id,
    required this.conductorId,
    required this.conductorName,
    required this.conductorPhone,
    required this.vehicule,
    required this.parkingId,
    required this.parkingAddress,
    this.place,
    required this.startTime,
    required this.endTime,
    required this.status,
  });

  final String id;
  final String conductorId;
  final String conductorName;
  final String conductorPhone;
  final VehiculeModel vehicule;
  final String parkingId;
  final String parkingAddress;
  final String? place;
  final DateTime startTime;
  final DateTime endTime;
  final ReservationStatus status;

  @override
  List<Object> get props => [id, conductorId, conductorName, conductorPhone, vehicule, parkingId, parkingAddress, place!, startTime, endTime, status];

}