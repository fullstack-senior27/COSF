import 'package:cosmetropolis/environment.dart';
import 'package:cosmetropolis/view/locator.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  setupLocator();
  Environment();
}
