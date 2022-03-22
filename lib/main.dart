import 'exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'App Title',
      theme: const CupertinoThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
