import 'package:ios_whatsapp_ui/exports.dart';

import 'chats_viewmodel.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatsViewModel>.reactive(
      viewModelBuilder: () => ChatsViewModel(),
      builder: (context, model, child) => CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          leading: Align(
            alignment: Alignment(-1, 0.2),
            child: Text('Edit', style: TextStyle(color: kcBlue)),
          ),
          middle: Text('Chats'),
          trailing: FaIcon(
            FontAwesomeIcons.penToSquare,
            size: 20,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Broadcast Lists',
                        style: TextStyle(
                          color: kcBlue,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'New Group',
                        style: TextStyle(
                          color: kcBlue,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
