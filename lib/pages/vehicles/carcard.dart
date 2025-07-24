


class Car {
  final String id;
  final String make;
  final String model;
  final int year;
  final double price;
  final String imageUrl;
  final String location;
  final double mileage;
  final String transmission;
  final String fuelType;
  final int horsepower;
  final String color;
  final double rating;

  Car({
    required this.id,
    required this.make,
    required this.model,
    required this.year,
    required this.price,
    required this.imageUrl,
    required this.location,
    required this.mileage,
    required this.transmission,
    required this.fuelType,
    required this.horsepower,
    required this.color,
    required this.rating,
  });

  String get formattedPrice => '\$${price.toStringAsFixed(2)}';
  String get fullName => '$year $make $model';
}