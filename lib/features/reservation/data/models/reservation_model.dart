
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:ulysse_app/core/utilities/enum.dart';
import 'package:ulysse_app/features/reservation/data/models/vehicule_model.dart';
import 'package:ulysse_app/features/reservation/domain/entities/reservation_entity.dart';

part 'reservation_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ReservationModel extends ReservationEntity {
  const ReservationModel({
    required super.id,
    required super.conductorId,
    required super.conductorName,
    required super.conductorPhone,
    required super.vehicule,
    required super.parkingId,
    required super.parkingAddress,
    super.place,
    required super.startTime,
    required super.endTime,
    required super.status,
  });

  ReservationModel.fromDocumentSnapshot(DocumentSnapshot doc) : this(
    id: doc.id,
    conductorId: doc['id_conducteur'],
    conductorName: doc['nom_conducteur'],
    conductorPhone: doc['phone_conducteur'],
    vehicule: doc['vehicule'],
    parkingId: doc['parking_id'],
    parkingAddress: doc['adresse_parking'],
    place: doc['place'] ?? '',
    startTime: doc['start_time'].toDate(),
    endTime: doc['end_time'].toDate(),
    status: doc['status'],
  );

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}