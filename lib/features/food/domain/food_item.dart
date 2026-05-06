class FoodItem {
  const FoodItem({required this.name, required this.calories});

  final String name;
  final int calories;

  Map<String, dynamic> toMap() => {'name': name, 'calories': calories};

  factory FoodItem.fromMap(Map<String, dynamic> map) {
    return FoodItem(
      name: map['name']?.toString() ?? '',
      calories: (map['calories'] as num?)?.round() ?? 0,
    );
  }
}
