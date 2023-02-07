import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(
                onPressed: showDialog, icon: const Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: const [
            ColorPalette(
                baseColor1: '698269',
                baseColor2: 'B99B6B',
                baseColor3: 'F1DBBF',
                baseColor4: 'AA5656'),
            ColorPalette(
                baseColor1: '362FD9',
                baseColor2: '3C84AB',
                baseColor3: '85CDFD',
                baseColor4: 'DEFCF9'),
            ColorPalette(
                baseColor1: '20262E',
                baseColor2: '913175',
                baseColor3: 'CD5888',
                baseColor4: 'E9E8E8'),
            ColorPalette(
                baseColor1: 'D61355',
                baseColor2: 'F94A29',
                baseColor3: 'FCE22A',
                baseColor4: '30E3DF'),
            ColorPalette(
                baseColor1: 'AAE3E2',
                baseColor2: 'D9ACF5',
                baseColor3: 'FFCEFE',
                baseColor4: 'FDEBED'),
            ColorPalette(
                baseColor1: '03001C',
                baseColor2: '301E67',
                baseColor3: '5B8FB9',
                baseColor4: 'B6EADA'),
          ]),
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
