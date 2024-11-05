import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class NeumorphicContainer extends StatelessWidget {
  const NeumorphicContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: const Offset(-6.0, -6.0),
            blurRadius: 16.0,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(6.0, 6.0),
            blurRadius: 16.0,
          ),
        ],
        color: NeumorphicColors.background,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: const Center(
        
      ),
    );
  }
}