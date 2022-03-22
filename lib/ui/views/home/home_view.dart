import 'package:ios_whatsapp_ui/exports.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, size: 25),
              label: 'Status',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone, size: 25),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera, size: 25),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill, size: 30),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings, size: 25),
              label: 'Settings',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(color: Colors.pink),
                );
              });
              break;
            case 1:
              returnValue = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  backgroundColor: Colors.purple,
                  child: Container(color: Colors.purple),
                );
              });
              break;
            case 2:
              returnValue = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(color: Colors.amber),
                );
              });
              break;
            case 3:
              returnValue = CupertinoTabView(builder: (context) {
                return const ChatsView();
              });
              break;
            case 4:
              returnValue = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(color: Colors.red),
                );
              });
              break;
          }
          return returnValue;
        },
      ),
    );
  }
}
