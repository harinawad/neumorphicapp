import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphicapp/view/screens/login.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.grey),
        child: Column(
          children: [
            //const NeumorphicContainer(),
            const SizedBox(height: 100),

            Neumorphic(
              style: const NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 7,
                  intensity: 0.7,
                  color: Colors.grey),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  "assets/burger.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   decoration: NeumorphicDecoration(
            //     style: const NeumorphicStyle(
            //       intensity: 82,
            //       shadowDarkColor: Color.fromARGB(255, 251, 252, 253),
            //       shadowLightColor: NeumorphicColors.darkDefaultBorder,
            //       lightSource: LightSource.topLeft,
            //       color: NeumorphicColors.darkVariant
            //     ),
            //     isForeground: false,
            //     renderingByPath: false,
            //     splitBackgroundForeground: true,
            //     shape: NeumorphicBoxShape.stadium()),
            // ),

            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NeumorphicText(
                "Enjoy \nYour Food",
                style: const NeumorphicStyle(
                  color: Color.fromARGB(255, 0, 207, 7),
                ),
                textStyle: NeumorphicTextStyle(
                    fontSize: 38, fontWeight: FontWeight.w700),
              ),
            ),
            // Neumorphic(child: Text.rich(const TextSpan(text: "HELLO"),),),

            const SizedBox(height: 40),

            NeumorphicButton(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 22),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              },
              style: NeumorphicStyle(
                disableDepth: false,
                shape: NeumorphicShape.concave,
                depth: 4,
                intensity: 1,
                lightSource: const LightSource(-1.0, -1.0),
                surfaceIntensity: 0.25,
                color: NeumorphicColors.decorationMaxWhiteColor,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(18)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 50),
              child: const Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
