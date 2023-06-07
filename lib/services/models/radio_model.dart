class RadioModel {
  final int id;
  final String radioName;
  final String? radioURL;
  final String radioDescription;
  final String? radioWebsite;
  final String radioPic;
  final bool? isBookmarked;

  RadioModel(
      {required this.id,
      required this.radioName,
      this.radioURL,
      required this.radioDescription,
      this.radioWebsite,
      required this.radioPic,
      this.isBookmarked});
}
