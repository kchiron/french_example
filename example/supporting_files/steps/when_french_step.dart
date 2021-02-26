import 'package:gherkin/gherkin.dart';
import '../worlds/custom_world.world.dart';

StepDefinitionGeneric WhenBuyBaguette() {
  return given<FrenchWorld>(
    'il va acheter sa baguette',
        (context) async {
          print('il va acheter sa baguette');
    },
  );
}
