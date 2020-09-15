import 'dart:math';
import 'dart:ui';

class RandomColorUtil {
  static const int _MAX_RANDOM_INTENSITY = 256;
  static const double _MAX_OPACITY = 1;
  static Random _random = Random();

  //Generate random color by randomizing intensity of rgb channels.
  //If changeOpacity is "true", color opacity changes randomly.
  static Color getRandomColor(bool changeOpacity) {
    int redChannelIntensity = _random.nextInt(_MAX_RANDOM_INTENSITY);
    int greenChannelIntensity = _random.nextInt(_MAX_RANDOM_INTENSITY);
    int blueChannelIntensity = _random.nextInt(_MAX_RANDOM_INTENSITY);
    double opacity = changeOpacity ? _random.nextDouble() : _MAX_OPACITY;
    return Color.fromRGBO(
        redChannelIntensity, greenChannelIntensity, blueChannelIntensity, opacity);
  }

  //For changing implementation of Random
  static void setRandom(Random random) {
    _random = random;
  }
}