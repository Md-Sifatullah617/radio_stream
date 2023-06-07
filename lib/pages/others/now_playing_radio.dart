import 'package:flutter/material.dart';
import 'package:radio_stream/widgets/global/image_data.dart';

class NowPlayingRadio extends StatelessWidget {
  final String radioTitle;
  final String radioImage;
  const NowPlayingRadio(
      {super.key, required this.radioTitle, required this.radioImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff182545),
      child: nowPlaying(radioTitle, radioImage),
    );
  }

  Widget nowPlaying(title, imgUrl) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          "Currently Playing",
          textScaleFactor: 0.8,
          style: TextStyle(color: Colors.white),
        ),
        leading: imageData(imgUrl, size: 50.0),
        trailing: Wrap(
          spacing: -10.0,
          children: [stopRadioButton(), shareButton()],
        ),
      ),
    );
  }

  Widget stopRadioButton() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.stop),
      color: Colors.white,
    );
  }

  Widget shareButton() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.share),
      color: Colors.white,
    );
  }
}
