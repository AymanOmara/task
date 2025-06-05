import 'package:bloc/bloc.dart';
import 'package:domain/features/trips/entity/trip_entity.dart';
import 'package:domain/features/trips/use_case/fetch_trips_use_case.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._fetchTripsUseCase) : super(HomeInitial()) {
    fetchTrips();
  }

  final FetchTripsUseCase _fetchTripsUseCase;
  List<TripEntity> trips = [];

  void fetchTrips() {
    _fetchTripsUseCase().then((value) {
      value.fold(
        onSuccess: (data) {
          trips = data;
          emit(HomeInitial());
        },
        onFailure: (exception) {},
      );
    });
  }
}
