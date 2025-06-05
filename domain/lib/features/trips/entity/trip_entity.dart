class TripEntity {
  final String id;
  final String status;
  final String title;
  final DateRange dates;
  final List<Participant> participants;
  final int unfinishedTasks;
  final String coverImage;

  const TripEntity({
    required this.id,
    required this.status,
    required this.title,
    required this.dates,
    required this.participants,
    required this.unfinishedTasks,
    required this.coverImage,
  });
}

class DateRange {
  final String start;
  final String end;

  const DateRange({
    required this.start,
    required this.end,
  });
}

class Participant {
  final String name;
  final String avatarUrl;

  const Participant({
    required this.name,
    required this.avatarUrl,
  });
}
