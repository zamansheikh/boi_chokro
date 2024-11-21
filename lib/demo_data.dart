List<String> demoBigImages = [
  "assets/images/big_1.png",
  "assets/images/big_2.png",
  "assets/images/big_3.png",
  "assets/images/big_4.png",
];

List<Map<String, dynamic>> demoMediumCardData = [
  {
    "name": "Daylight Coffee",
    "image": "assets/images/medium_1.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.6,
    "delivertTime": 25,
  },
  {
    "name": "Mario Italiano",
    "image": "assets/images/medium_2.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.3,
    "delivertTime": 30,
  },
  {
    "name": "McDonald’s",
    "image": "assets/images/medium_3.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.8,
    "delivertTime": 25,
  },
  {
    "name": "The Halal Guys",
    "image": "assets/images/medium_4.png",
    "location": "Colarodo, San Francisco",
    "rating": 4.6,
    "delivertTime": 25,
  },
];

class Book {
  final String name, description;
  final double price;
  final int numOfLike, listingTime;
  final bool isFree;
  final bool isExchange;
  final String location;
  final String exchangePolicy;
  final List<String> images, bookType;

  Book({
    required this.name,
    required this.description,
    required this.price,
    required this.numOfLike,
    required this.listingTime,
    required this.isFree,
    required this.isExchange,
    required this.location,
    required this.exchangePolicy,
    required this.images,
    required this.bookType,
  });
}

List<Book> dummyBookList = [
  Book(
    name: "The Great Gatsby",
    description:
        "A classic novel by F. Scott Fitzgerald about the American Dream.",
    price: 0.0,
    numOfLike: 152,
    listingTime: 3, // Days since listing
    isFree: true,
    isExchange: false,
    location: "6.7", // Dhaka
    exchangePolicy: "N/A",
    images: demoBigImages..shuffle(),
    bookType: ["Novel", "Fiction"],
  ),
  Book(
    name: "Advanced Flutter Development",
    description:
        "A complete guide to building production-ready apps with Flutter.",
    price: 25.99,
    numOfLike: 98,
    listingTime: 7,
    isFree: false,
    location: "6.7", // Dhaka
    isExchange: true,
    exchangePolicy: "Can exchange with another programming book.",
    images: demoBigImages..shuffle(),
    bookType: ["Technology", "Programming"],
  ),
  Book(
    name: "Harry Potter and the Philosopher's Stone",
    description: "The first book in the Harry Potter series by J.K. Rowling.",
    price: 10.0,
    numOfLike: 240,
    listingTime: 1,
    isFree: false,
    location: "6.7", // Dhaka
    isExchange: true,
    exchangePolicy: "Can exchange with another fantasy book.",
    images: demoBigImages..shuffle(),
    bookType: ["Fantasy", "Fiction"],
  ),
  Book(
    name: "Rich Dad Poor Dad",
    description: "A personal finance book by Robert T. Kiyosaki.",
    price: 0.0,
    numOfLike: 185,
    listingTime: 5,
    isFree: true,
    location: "6.7", // Dhaka
    isExchange: false,
    exchangePolicy: "N/A",
    images: demoBigImages..shuffle(),
    bookType: ["Non-Fiction", "Finance"],
  ),
  Book(
    name: "Atomic Habits",
    description:
        "A book by James Clear on building good habits and breaking bad ones.",
    price: 15.5,
    numOfLike: 312,
    listingTime: 2,
    isFree: false,
    location: "6.7", // Dhaka
    isExchange: true,
    exchangePolicy: "Exchange with another self-help book.",
    images: demoBigImages..shuffle(),
    bookType: ["Self-Help", "Psychology"],
  ),
  Book(
    name: "Introduction to Algorithms",
    description: "Comprehensive textbook on algorithms by Cormen et al.",
    price: 50.0,
    numOfLike: 87,
    listingTime: 14,
    isFree: false,
    location: "6.7", // Dhaka
    isExchange: true,
    exchangePolicy: "Can exchange with another computer science book.",
    images: demoBigImages..shuffle(),
    bookType: ["Technology", "Education"],
  ),
  Book(
    name: "Think and Grow Rich",
    description:
        "A self-help book by Napoleon Hill based on financial success.",
    price: 0.0,
    numOfLike: 223,
    listingTime: 4,
    isFree: true,
    location: "6.7", // Dhaka
    isExchange: false,
    exchangePolicy: "N/A",
    images: demoBigImages..shuffle(),
    bookType: ["Self-Help", "Finance"],
  ),
];
