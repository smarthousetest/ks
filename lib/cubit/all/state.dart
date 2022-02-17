abstract class FilterState {}

class FilterOpenState extends FilterState {}

class FilterClosedState extends FilterState {}

abstract class SlidingAuthState {}

class SlidingAuthOpenState extends SlidingAuthState {}

class SlidingAuthClosedState extends SlidingAuthState {}

// ? --------------------- Заявки ---------------------

abstract class ProfilePageState {}

class ProfilePageLoadingState extends ProfilePageState {}

class ProfilePageLoadedState extends ProfilePageState {
  dynamic? loadedProfilePage;
  ProfilePageLoadedState({this.loadedProfilePage}) {}
}

class ProfilePageErrorState extends ProfilePageState {}