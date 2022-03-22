//*************************************************************************** */
// flutter packages pub run build_runner build --delete-conflicting-outputs
//*************************************************************************** */

import '../exports.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: HomeView, initial: true),
    CupertinoRoute(page: ChatsView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {
  //? Serves no purpose besides the annotation attached to it
}
