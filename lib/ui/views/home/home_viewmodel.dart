import 'package:intro_to_stacked/app/app.router.dart';

import '../../../app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  String _declaration = 'Stacked is soo cool';
  String get myDeclaration => _declaration;
  final _navigationService = locator<NavigationService>();

  void updateDeclaration() {
    _declaration = 'Stacked is definitely cool';
    notifyListeners();
  }

  void navigateToProfileView() {
    _navigationService.navigateTo(Routes.profileView);
  }
}
