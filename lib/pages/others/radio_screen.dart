import 'package:flutter/material.dart';
import 'package:radio_stream/pages/others/radio_row.dart';
import 'package:radio_stream/services/models/radio_model.dart';

import 'now_playing_radio.dart';

class RadioScreen extends StatelessWidget {
  RadioScreen({super.key});
  final RadioModel radioModel = RadioModel(
      id: 1,
      radioName: "Radio 1",
      radioDescription: "Test radio description",
      radioPic:
          "https://th.bing.com/th?id=ALSTU83B6EF9D1691227C857D9EA766AF5EF71C2D3BA4235E2822FADFD8A41E2D0DAF&w=472&h=280&rs=2&o=6&oif=webp&pid=SANGAM");
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            RadioRowExample(radioModel: radioModel),
            RadioRowExample(radioModel: radioModel),
            RadioRowExample(radioModel: radioModel),

            NowPlayingRadio(radioImage: radioModel.radioPic, radioTitle: radioModel.radioName)
        ],
      ),
    );
  }
}
