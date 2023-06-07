import 'package:flutter/material.dart';
import 'package:radio_stream/services/models/radio_model.dart';
import 'package:radio_stream/widgets/global/image_data.dart';

class RadioRowExample extends StatefulWidget {
  const RadioRowExample({super.key, required this.radioModel});
  final RadioModel radioModel;
  @override
  State<RadioRowExample> createState() => _RadioRowExampleState();
}

class _RadioRowExampleState extends State<RadioRowExample> {
  @override
  Widget build(BuildContext context) {
    return radioChanalInfo();
  }

  Widget radioChanalInfo() {
    return ListTile(
      title: Text(
        widget.radioModel.radioName,
        style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff182545)),
      ),
      leading: imageData(widget.radioModel.radioPic),
      subtitle: Text(
        widget.radioModel.radioDescription,
        maxLines: 2,
      ),
      trailing: Wrap(
        spacing: -10,
        children: [
          playResumeButton(),
          addFavouriteIcon(),
        ],
      ),
    );
  }


  Widget playResumeButton() {
    return IconButton(onPressed: () {}, icon: Icon(Icons.play_circle_fill));
  }

  Widget addFavouriteIcon() {
    return IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border));
  }
}
