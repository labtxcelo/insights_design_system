import 'package:flutter/material.dart';
import 'package:story_book/stories/widgets/widgets_story_group.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final plugins = initializePlugins(
      contentsSidePanel: true,
      knobsSidePanel: true,
      initialDeviceFrameData: DeviceFrameData(
        device: Devices.ios.iPhone13,
      ),
    );
    return Storybook(
      plugins: plugins,
      stories: [
        ...WidgetsStoryGroup.stories,
      ],
    );
  }
}
