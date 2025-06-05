import 'package:domain/features/trips/entity/trip_entity.dart';

class TripModel {
  final String? id;
  final String? status;
  final String? title;
  final DatesModel? dates;
  final List<ParticipantModel>? participants;
  final int? unfinishedTasks;
  final String? coverImage;

  TripModel({
    this.id,
    this.status,
    this.title,
    this.dates,
    this.participants,
    this.unfinishedTasks,
    this.coverImage,
  });

  TripEntity toEntity() {
    return TripEntity(
      id: id ?? '',
      status: status ?? '',
      title: title ?? '',
      dates: dates?.toEntity() ?? const DateRange(start: '', end: ''),
      participants: participants?.map((e) => e.toEntity()).toList() ?? [],
      unfinishedTasks: unfinishedTasks ?? 0,
      coverImage: coverImage ?? '',
    );
  }

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      id: json['id'],
      status: json['status'],
      title: json['title'],
      dates: json['dates'] != null ? DatesModel.fromJson(json['dates']) : null,
      participants: (json['participants'] as List?)
          ?.map((e) => ParticipantModel.fromJson(e))
          .toList(),
      unfinishedTasks: json['unfinished_tasks'],
      coverImage: json['cover_image'],
    );
  }
}

class DatesModel {
  final String? start;
  final String? end;

  DatesModel({this.start, this.end});

  DateRange toEntity() {
    return DateRange(
      start: start ?? '',
      end: end ?? '',
    );
  }

  factory DatesModel.fromJson(Map<String, dynamic> json) {
    return DatesModel(
      start: json['start'],
      end: json['end'],
    );
  }
}

class ParticipantModel {
  final String? name;
  final String? avatarUrl;

  ParticipantModel({this.name, this.avatarUrl});

  Participant toEntity() {
    return Participant(
      name: name ?? '',
      avatarUrl: avatarUrl ?? '',
    );
  }

  factory ParticipantModel.fromJson(Map<String, dynamic> json) {
    return ParticipantModel(
      name: json['name'],
      avatarUrl: json['avatar_url'],
    );
  }
}
