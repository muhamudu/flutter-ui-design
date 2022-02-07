class Product {
  final int id;
  final String title, description;
  final List<String> images;
  // final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    // required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our main Products

List<Product> mainProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/pngegg (16).png",
    ],
    title: "Full Suit",
    price: 6000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/pngegg (15).png",
    ],
    title: "Top Suit",
    price: 2500,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/pngegg (17).png",
    ],
    title: "Leather Coat",
    price: 3000,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/pngegg (13).png",
    ],
    title: "T-Shirt",
    price: 2000,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "We are proffesional in laundry and dry cleaning with special treatement to our client …";
