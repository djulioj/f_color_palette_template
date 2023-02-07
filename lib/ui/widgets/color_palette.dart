import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette(
      {Key? key,
      required this.baseColor1,
      required this.baseColor2,
      required this.baseColor3,
      required this.baseColor4,
      required this.callback
      // así se reciben en el constructor, por ejemplo
      //required this.baseColor,
      })
      : super(key: key);

  final String baseColor1;
  final String baseColor2;
  final String baseColor3;
  final String baseColor4;
  final Function(String) callback;

  // atributos de la clase, por ejemplo
  //final String baseColor;

  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo
  //final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // vamos a mostrar los elementos en un row
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: GestureDetector(
                child: Container(
                  height: 100,
                  color: ColorUtils.FromHex(baseColor1),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(
                child: Container(
                  height: 100,
                  color: ColorUtils.FromHex(baseColor2),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                child: Container(
                  height: 100,
                  color: ColorUtils.FromHex(baseColor3),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Container(
                  height: 100,
                  color: ColorUtils.FromHex(baseColor4),
                ),
              ),
            ),
          ],
        ));
  }
}
