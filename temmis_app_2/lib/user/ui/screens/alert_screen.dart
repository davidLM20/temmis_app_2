import 'package:flutter/material.dart';
import 'package:temmis_app_2/user/ui/widgets/alerDialog.dart';

class AlertScreen extends StatefulWidget {
  @override
  _AlertScreenState createState() => new _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: RaisedButton(
                    onPressed: () => _showDialogFlash(),
                    child: Text('Simple Dialog'),
                  ),
    );
  }

  void _showDialogFlash() {
    FlashHelper.simpleDialog(context,
        title: 'Flash Dialog',
        message:
            '⚡️A highly customizable, powerful and easy-to-use alerting library for Flutter.',
        negativeAction: Text('NO'),
        onNegativeActionTap: (controller) => controller.dismiss(),
        positiveAction: Text('Continuar'),
        positiveActionTap: (controller) => controller.dismiss());
  }
}