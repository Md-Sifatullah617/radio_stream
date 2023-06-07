import 'package:flutter/material.dart';
import 'package:radio_stream/pages/others/radio_row.dart';
import 'package:radio_stream/services/models/radio_model.dart';
import 'package:radio_stream/widgets/features/search_option.dart';
import 'package:radio_stream/widgets/global/app_logo.dart';
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
          appLogo(),
          searchRadioChannel(),
          radioList(),
          NowPlayingRadio(
              radioImage: radioModel.radioPic, radioTitle: radioModel.radioName)
        ],
      ),
    );
  }

  Widget radioList() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: ListView(
          children: [
            ListView.separated(
                itemBuilder: (context, index) {
                  return RadioRowExample(radioModel: radioModel);
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}
