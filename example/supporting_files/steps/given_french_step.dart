import 'package:gherkin/gherkin.dart';
import '../worlds/custom_world.world.dart';

StepDefinitionGeneric GivenFrenchUser() {
  return given<FrenchWorld>(
    'un utilisateur français',
        (context) async {
          print('un utilisateur français');
    },
  );
}

StepDefinitionGeneric GivenHungry() {
  return given<FrenchWorld>(
    'il a faim',
        (context) async {
          print('il a faim');
    },
  );
}
