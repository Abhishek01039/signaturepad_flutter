import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

void main() {
  return runApp(
    _MyApp(),
  );
}

///Renders the SignaturePad widget.
class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tritonetech SignaturePad',
      home: _MyHomePage(
        title: 'Tritonetech SignaturePad',
      ),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  _MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                child: SfSignaturePad(
                  key: signatureGlobalKey,
                  backgroundColor: Colors.white,
                  strokeColor: Colors.black,
                  minimumStrokeWidth: 1.0,
                  maximumStrokeWidth: 4.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: TextButton(
                child: Text('Clear'),
                onPressed: _handleClearButtonPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
