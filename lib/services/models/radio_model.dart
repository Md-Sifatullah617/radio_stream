class RadioModel {
  final int id;
  final String radioName;
  final String radioURL;
  final String radioDescription;
  final String radioWebsite;
  final String radioPic;
  final bool isBookmarked;

  RadioModel(
      {required this.id,
      required this.radioName,
      required this.radioURL,
      required this.radioDescription,
      required this.radioWebsite,
      required this.radioPic,
      required this.isBookmarked});
}
