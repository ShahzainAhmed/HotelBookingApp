import 'package:hotel_booking_app/resources/assets/image_assets.dart';

class CardsModel {
  final String title;
  final String subTitle;
  final String description;
  final String rating;
  final String price;
  final String image;

  CardsModel({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.price,
    required this.rating,
    required this.image,
  });
}

List cardsList = [
  CardsModel(
    title: "The Luxury Hotel",
    subTitle: "6391 Elgin St. Celna, Deltaware 10299",
    description:
        "A hotel is a commercial establishment that provides lodging meals, and other services to guests, travelers, and tourists.",
    price: "\$299.9",
    rating: "4.0",
    image: ImageAssets.kPic1,
  ),
  CardsModel(
    title: "The Complex Hotel",
    subTitle: "18525 London St. Kelna, Hollenworld 86100",
    description:
        "Discover unparalleled comfort and luxury at our esteemed hotel, offering exquisite lodging, gourmet meals, and personalized services for discerning guests.",
    price: "\$329.9",
    rating: "4.5",
    image: ImageAssets.kPic2,
  ),
  CardsModel(
    title: "Tranquil Oasis Retreat",
    subTitle: "7729 Main Ave. Riverdale, Delphia 48200",
    description:
        "Experience a cozy retreat at our charming hotel, where warm hospitality meets modern amenities, ensuring a memorable stay for travelers seeking relaxation and convenience.",
    price: "\$299.9",
    rating: "4.0",
    image: ImageAssets.kPic3,
  ),
  CardsModel(
    title: "Oceanview Resort",
    subTitle: "301 Oakwood Dr. Maplewood, Brackenwood 71850",
    description:
        "Immerse yourself in the vibrant ambiance of our boutique hotel, where stylish accommodations, delectable cuisine, and attentive service cater to the needs of every guest.",
    price: "\$399.99",
    rating: "4.8",
    image: ImageAssets.kPic4,
  ),
  CardsModel(
    title: "Mountain Retreat Lodge",
    subTitle: "4567 Summit Rd. Pine Valley, Serenity 98765",
    description:
        "Embark on a journey of discovery at our eco-friendly hotel, nestled amidst nature's beauty, providing sustainable accommodations, farm-to-table dining, and eco-conscious experiences.",
    price: "\$249.99",
    rating: "4.3",
    image: ImageAssets.kPic5,
  ),
  CardsModel(
    title: "Urban Boutique Hotel",
    subTitle: "7890 Main St. Metro City, Cosmopolis 13579",
    description:
        "Indulge in a world of opulence at our five-star hotel, where every detail is meticulously crafted to offer unparalleled luxury, exquisite cuisine, and impeccable service to our esteemed clientele.",
    price: "\$199.99",
    rating: "4.7",
    image: ImageAssets.kPic6,
  ),
];
