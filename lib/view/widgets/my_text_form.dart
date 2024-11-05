import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        disableDepth: false,
        shape: NeumorphicShape.concave,
        depth: -4,
        intensity: 1,
        lightSource: const LightSource(-1.0, -1.0),
        surfaceIntensity: 0.25,
        color: NeumorphicColors.decorationMaxWhiteColor,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(18)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        decoration: const InputDecoration(
          hintText: 'Enter text',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
