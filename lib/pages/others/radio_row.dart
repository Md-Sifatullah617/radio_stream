import 'package:flutter/material.dart';
import 'package:radio_stream/services/models/radio_model.dart';

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
        children: [
          playResumeButton(),
          addFavouriteIcon(),
        ],
      ),
    );
  }

  Widget imageData(url, {size}) {
    return Container(
      height: size ?? 55,
      width: size ?? 55,
      decoration: BoxDecoration(
          color: Color(0xffffe5ec),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3))
          ]),
      child: Image.network(url),
    );
  }

  Widget playResumeButton() {
    return IconButton(onPressed: () {}, icon: Icon(Icons.play_circle_fill));
  }

  Widget addFavouriteIcon() {
    return IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border));
  }
}
