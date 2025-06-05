import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/features/home/features/navigation_bar/display/home_services.dart';

part 'home_navigation_bar_state.dart';

class HomeNavigationBarCubit extends Cubit<HomeNavigationBarState> {
  HomeNavigationBarCubit() : super(HomeNavigationBarInitial());
  HomeServices selectedService = HomeServices.items;
}
