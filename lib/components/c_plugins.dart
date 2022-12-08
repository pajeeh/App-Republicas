// ! coleção de plugins Cupertino

import 'package:flutter/cupertino.dart';
import '../../colors/colors.dart';

//* Classe de alerta do plugin Cupertino
class CupertinoAlert extends StatefulWidget {
  const CupertinoAlert({
    Key? key,
    required this.type,
  }) : super(key: key);

  final AlertType type;

  @override
  _CupertinoAlertState createState() => _CupertinoAlertState();
}

class AlertType {
  const AlertType._(this.index);

  final int index;

  static const AlertType alert = AlertType._(0);
  static const AlertType alertWithTitle = AlertType._(1);
  static const AlertType alertWithButtons = AlertType._(2);
  static const AlertType alertWithButtonsOnly = AlertType._(3);
  static const AlertType alertWithText = AlertType._(4);
  static const AlertType modalPopup = AlertType._(5);
}

class _CupertinoAlertState extends State<CupertinoAlert> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type.index) {
      case 0:
        return _alert();
      case 1:
        return _alertWithTitle();
      case 2:
        return _alertWithButtons();
      case 3:
        return _alertWithButtonsOnly();
      case 4:
        return _alertWithText();
      case 5:
        return _modalPopup();
      default:
        return _alert();
    }
  }

  Widget _alert() {
    return CupertinoAlertDialog(
      title: const Text('Alert'),
      content: const Text('Discard draft?'),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text('Discard'),
          onPressed: () {
            Navigator.pop(context, 'Discard');
          },
        ),
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }

  Widget _alertWithTitle() {
    return CupertinoAlertDialog(
      title: const Text(
          'Allow "Maps" to access your location while you are using the app?'),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text('Don\'t Allow'),
          onPressed: () {
            Navigator.pop(context, 'Disallow');
          },
        ),
        CupertinoDialogAction(
          child: const Text('Allow'),
          onPressed: () {
            Navigator.pop(context, 'Allow');
          },
        ),
      ],
    );
  }

  Widget _alertWithButtons() {
    return CupertinoAlertDialog(
      title: const Text(
          'Allow "Maps" to access your location while you are using the app?'),
      content: const Text(
          'Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text('Don\'t Allow'),
          onPressed: () {
            Navigator.pop(context, 'Disallow');
          },
        ),
        CupertinoDialogAction(
          child: const Text('Allow'),
          onPressed: () {
            Navigator.pop(context, 'Allow');
          },
        ),
      ],
    );
  }

  Widget _alertWithButtonsOnly() {
    return CupertinoAlertDialog(
      actions: <Widget>[
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context, 'Delete');
          },
          child: const Text('Delete Draft'),
        ),
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }

  Widget _alertWithText() {
    return CupertinoAlertDialog(
      title: const Text('New Photos from Sara'),
      content: const Text(
          'Your shared photo album "Vacation" was recently updated with new photos.'),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text('View Photos'),
          onPressed: () {
            Navigator.pop(context, 'View Photos');
          },
        ),
        CupertinoDialogAction(
          child: const Text('OK'),
          onPressed: () {
            Navigator.pop(context, 'OK');
          },
        ),
      ],
    );
  }

  Widget _modalPopup() {
    return CupertinoActionSheet(
      title: const Text('Favorite Dessert'),
      message:
          const Text('Please select the best dessert from the options below.'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Text('Profiteroles'),
          onPressed: () {
            Navigator.pop(context, 'Profiteroles');
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Cannolis'),
          onPressed: () {
            Navigator.pop(context, 'Cannolis');
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Trifle'),
          onPressed: () {
            Navigator.pop(context, 'Trifle');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
        child: const Text('Cancel'),
      ),
    );
  }
}

//* Classe de botão do plugin Cupertino

class CupertinoButtonPlugin extends StatelessWidget {
  const CupertinoButtonPlugin({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

//* classe de chave do plugin Cupertino

class CupertinoKeyPlugin extends StatefulWidget {
  const CupertinoKeyPlugin({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  _CupertinoKeyPluginState createState() => _CupertinoKeyPluginState();
}

class _CupertinoKeyPluginState extends State<CupertinoKeyPlugin> {
  final _switchValue = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _switchValue.value,
      onChanged: ((value) {
        setState(() {
          _switchValue.value = value;
        });
      }),
      activeColor: verde,
    );
  }
}

//* Classe do indicador de progresso do plugin Cupertino
class CupertinoProgressIndicator extends StatelessWidget {
  const CupertinoProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoActivityIndicator(
      radius: 15,
    );
  }
}

//* Classe de textfield do plugin Cupertino
class CupertinoTxtFieldPlugin extends StatelessWidget {
  const CupertinoTxtFieldPlugin({
    super.key,
    required this.hint,
    required this.controller,
    required this.obscureText,
    required this.keyboardType,
    required this.enabled,
    required this.enableSuggestions,
    required this.maxLines,
    required this.minLines,
    required this.obscuringCharacter, 
    required String placeholder, 
    required Icon prefix, 
    required Icon suffix, 
    required Null Function(String value) onChanged, required this.onTap,
  });

  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final VoidCallback onTap;
  final bool enabled;
  final bool enableSuggestions;
  final int maxLines;
  final int minLines;
  final String obscuringCharacter;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: hint,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      enabled: enabled,
      enableSuggestions: enableSuggestions,
      maxLines: maxLines,
      minLines: minLines,
      obscuringCharacter: obscuringCharacter,
      decoration: BoxDecoration(
        color: branco,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

//* Classe do tabbar do plugin Cupertino
class _TabInfo {
  const _TabInfo(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final Color color;
}

class CupertinoTabBarPlugin extends StatefulWidget {
  const CupertinoTabBarPlugin({
    super.key,
    required this.items,
    required this.onTap,
    required this.currentIndex,
  });

  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final int currentIndex;

  @override
  _CupertinoTabBarPluginState createState() => _CupertinoTabBarPluginState();
}

class _CupertinoTabBarPluginState extends State<CupertinoTabBarPlugin> {
  late List<_TabInfo> _tabs;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      items: _tabs
          .map((tab) => BottomNavigationBarItem(
                icon: Icon(
                  tab.icon,
                  color: tab.color,
                ),
                label: tab.title,
              ))
          .toList(),
      onTap: widget.onTap,
      currentIndex: widget.currentIndex,
    );
  }
}
