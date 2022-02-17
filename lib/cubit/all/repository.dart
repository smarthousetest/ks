import 'package:kazansummit/cubit/all/api.dart';
import 'package:kazansummit/cubit/all/model.dart';

class ProfilePageRepository {
  ProfilePageApi profilePageApi = ProfilePageApi();
  Future<ProfilePageModel> getAllProfilePage() =>
      profilePageApi.getProfilePage();
}
