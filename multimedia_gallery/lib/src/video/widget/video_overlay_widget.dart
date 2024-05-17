import 'package:flutter/material.dart';
import 'package:multimedia_gallery/src/extension/constants.dart';
import 'package:multimedia_gallery/src/extension/string_formatter.dart';
import 'package:multimedia_gallery/src/video/widget/video_slider_widget.dart';
import 'package:video_player/video_player.dart';

/// The video overlay widget. This widget is used to display the play, pause button,
/// back button and black overlay background.
class VideoOverlay extends StatelessWidget {
  const VideoOverlay(
      {super.key,
      required this.controller,
      required this.onPlayPressed,
      required this.isPortrait,
      this.overlayColor,
      this.backIcon,
      this.onBackButtonPressed,
      this.backButtonColor,
      this.iconSize,
      this.iconColor,
      this.sliderStyle,
      this.onSliderChange,
      this.onChangeEnd});

  final VideoPlayerController controller;
  final void Function() onPlayPressed;
  final bool isPortrait;
  final Color? overlayColor;
  final void Function()? onBackButtonPressed;
  final Icon? backIcon;
  final Color? backButtonColor;
  final double? iconSize;
  final Color? iconColor;
  final SliderThemeData? sliderStyle;
  final void Function(double)? onSliderChange;
  final void Function(double)? onChangeEnd;

  @override
  Widget build(BuildContext context) {
    Widget centerIcon() {
      if (controller.value.isPlaying) {
        return const Icon(Icons.pause);
      } else if (controller.value.isBuffering) {
        return loadingIndicator();
      } else if (controller.value.isCompleted) {
        return const Icon(Icons.replay);
      } else {
        return const Icon(Icons.play_arrow);
      }
    }

    return Stack(children: [
      Positioned.fill(
        child: Container(color: overlayColor ?? Colors.black26),
      ),
      Container(
          child: isPortrait
              ? null
              : IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: backButton,
                  color: backButtonColor ?? Colors.white)),
      Center(
          child: IconButton(
              icon: centerIcon(),
              iconSize: iconSize ?? 50,
              color: iconColor ?? Colors.white,
              onPressed: onPlayPressed)),
      VideoSlider(
          data: sliderStyle,
          currentPosition: formatDuration(controller.value.position),
          videoDuration: formatDuration(controller.value.duration),
          child: Slider(
              value: controller.value.position.inMilliseconds.toDouble(),
              min: 0,
              max: controller.value.duration.inMilliseconds.toDouble(),
              onChanged: onSliderChange,
              onChangeEnd: onChangeEnd)),
    ]);
  }
}