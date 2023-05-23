// ignore_for_file: public_member_api_docs, sort_constructors_first
class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected,
  });

  static List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel> populardiets = [];

    populardiets.add(
      PopularDietsModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/icons/pancake2.svg',
        level: 'Medium',
        duration: '30 mins',
        calorie: '230 kCal',
        boxIsSelected: true,
      ),
    );

    populardiets.add(
      PopularDietsModel(
        name: 'Salmon Nigiri',
        iconPath: 'assets/icons/nigiri1.svg',
        level: 'Medium',
        duration: '20 mins',
        calorie: '120 kCal',
        boxIsSelected: true,
      ),
    );
    return populardiets;
  }
}
