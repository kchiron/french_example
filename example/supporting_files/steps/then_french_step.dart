import 'package:gherkin/gherkin.dart';
import '../worlds/custom_world.world.dart';

StepDefinitionGeneric ThenPutsOnMask() {
  return given<FrenchWorld>(
    'il met son masque',
    (context) async {
      print('il met son masque');
    },
  );
}
