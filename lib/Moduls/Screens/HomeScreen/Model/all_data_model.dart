class AllData {
  String verse;
  String sanskrit;
  String english;
  String gujrati;
  String hindi;

  AllData({
    required this.verse,
    required this.sanskrit,
    required this.english,
    required this.gujrati,
    required this.hindi,
  });

  factory AllData.fromJson({required Map data}) {
    return AllData(
        verse: data['verse'],
        sanskrit: data['san'],
        english: data['en'],
        gujrati: data['guj'],
        hindi: data['hi']);
  }
}
