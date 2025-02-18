import 'package:auth_app/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:auth_app/app/app.locator.dart';
import 'package:auth_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  //final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    //if(_authenticationService.userLoggedIn()) {
    // _navigationService.replaceWithHomeView();
    //}
    await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    _navigationService.replaceWithHomeView();
  }
}
