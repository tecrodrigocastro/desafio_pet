class DataSelect {
  final String icon;
  final String title;
  bool isSelected = false;
  DataSelect({
    required this.icon,
    required this.title,
    required this.isSelected,
  });
  static DataSelect fromJson(json) => DataSelect(
        icon: json['icon'],
        title: json['title'],
        isSelected: json['isSelected'],
      );
}
