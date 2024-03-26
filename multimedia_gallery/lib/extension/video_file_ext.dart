import 'dart:io';
import 'package:video_player/video_player.dart';

/// The network video file type method. This method is calling for [VideoPlayerController.networkUrl] in to
/// fetch network video file video player package.
networkVideo(String path) {
  return VideoPlayerController.networkUrl(Uri.parse(path));
}

/// The asset video file type method. This method is calling for [VideoPlayerController.asset] to fetch
/// for asset video file in video player package.
assetVideo(String path) {
  return VideoPlayerController.asset(path);
}

/// The local video file type method. This method is calling for [VideoPlayerController.file] to fetch local
/// video file for video player package.
localVideo(String path) {
  return VideoPlayerController.file(File(path));
}
