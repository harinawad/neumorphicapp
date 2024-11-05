import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphicapp/view/screens/my_home_page.dart';
import 'package:neumorphicapp/view/widgets/my_text_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: NeumorphicText(
                  "LOG IN",
                  style: const NeumorphicStyle(
                    depth: 9,
                    color: NeumorphicColors.defaultTextColor,
                  ),
                  textStyle: NeumorphicTextStyle(
                      fontSize: 34, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              // Stack(children: [
              //   Positioned(
              //       width: 100,
              //       height: 100,
              //       top: 44,
              //       left: 50,
              //       child: Neumorphic(
              //         style: const NeumorphicStyle(
              //             shape: NeumorphicShape.convex,
              //             boxShape: NeumorphicBoxShape.circle(),
              //             depth: 7,
              //             intensity: 0.7,
              //             color: Colors.grey),
              //         child: Container(
              //           height: 100,
              //           width: 100,
              //           child: Image.asset(
              //             "assets/burger.png",
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       )),
              // ]),
              SizedBox(
                height: 450,
                width: 350,
                child: Stack(
                  fit: StackFit.passthrough,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Positioned(
                      top: 70,
                      width: 350,
                      height: 350,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            lightSource: const LightSource(0, 0),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                                const BorderRadius.all(Radius.circular(12))),
                            depth: 12,
                            intensity: 1,
                            color: Colors.grey[50]),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const MyTextForm(),
                                const SizedBox(
                                  height: 12,
                                ),
                                const MyTextForm(),
                                const SizedBox(
                                  height: 12,
                                ),
                                NeumorphicButton(
                                  margin: const EdgeInsets.only(top: 12),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const MyHomePage(),
                                      ),
                                    );
                                  },
                                  style: NeumorphicStyle(
                                    depth: 9,
                                    intensity: 1,
                                    shape: NeumorphicShape.flat,
                                    color: Colors.grey[50],
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(8)),
                                    //border: NeumorphicBorder()
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 29.0, vertical: 14),
                                  child: const Text(
                                    "Log In",
                                    style: TextStyle(
                                        color:
                                            NeumorphicColors.defaultTextColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    NeumorphicText(
                                      "don't have account! ",
                                      style: const NeumorphicStyle(
                                        depth: 9,
                                        color:
                                            NeumorphicColors.defaultTextColor,
                                      ),
                                      textStyle: NeumorphicTextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    NeumorphicText(
                                      "  SIGN UP",
                                      style: const NeumorphicStyle(
                                        depth: 9,
                                        color: Colors.lightGreen,
                                      ),
                                      textStyle: NeumorphicTextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 125,
                      height: 100,
                      width: 100,
                      child: Neumorphic(
                        style: const NeumorphicStyle(
                            lightSource: LightSource.top,
                            boxShape: NeumorphicBoxShape.circle()),
                        child: Container(
                          child: Image.asset(
                            "assets/burger.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
