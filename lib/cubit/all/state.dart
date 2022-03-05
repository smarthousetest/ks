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

abstract class ClaimPageState {}

class ClaimPageLoadingState extends ClaimPageState {}

class ClaimPageLoadedState extends ClaimPageState {
  dynamic? loadedClaimPage;
  ClaimPageLoadedState({this.loadedClaimPage}) {}
}

class ClaimPageErrorState extends ClaimPageState {}

abstract class ClaimDeleteState {}

class ClaimDeleteClaimState extends ClaimDeleteState {}

class ClaimDeleteErrorState extends ClaimDeleteState {}

class ClaimDeleteEmptyState extends ClaimDeleteState {}

abstract class ClaimUpdatetate {}

class ClaimUpdateClaimState extends ClaimUpdatetate {}

class ClaimUpdateErrorState extends ClaimUpdatetate {}

class ClaimUpdateEmptyState extends ClaimUpdatetate {}
