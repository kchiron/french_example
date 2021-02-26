import 'dart:async';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'supporting_files/steps/given_french_step.dart';
import 'supporting_files/steps/when_french_step.dart';
import 'supporting_files/steps/then_french_step.dart';
import 'supporting_files/worlds/custom_world.world.dart';

Future<void> main() {
  final steps = [
    GivenFrenchUser(),
    GivenHungry(),
    WhenBuyBaguette(),
    ThenPutsOnMask()
  ];
  final config = TestConfiguration.DEFAULT(steps)
    ..features = [Glob("features/**.feature")]
    ..featureDefaultLanguage = "fr"
    ..tagExpression = 'not @skip'
    ..createWorld =
        (TestConfiguration config) => Future.value(FrenchWorld());

  return GherkinRunner().execute(config);
}
