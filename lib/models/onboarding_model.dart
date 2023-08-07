import 'package:petsync_customer/constants/image.dart';

class OnboardingModel {
  String? image;
  String? heading;
  String? description;

  OnboardingModel({this.image, this.heading, this.description});

  List<OnboardingModel> get items {
    return [
      OnboardingModel(
          image: onboardingImage1,
          heading: 'Shop Pet Products',
          description:
              'Explore our curated collection of premium pet products that will have tails wagging and whiskers twitching with joy. From irresistible toys to cozy beds, we\'ve got everything to make your furry friend\'s life truly pawfect.'),
      OnboardingModel(
          image: onboardingImage2,
          heading: 'Find best groomers',
          description:
              'Just like every pet is unique, so are their grooming needs. Our skilled groomers understand the distinct requirements of different breeds, coats, and personalities. Whether it\'s a breed-specific cut or a soothing spa treatment, we customize our services for the perfect grooming outcome.'),
      OnboardingModel(
          image: onboardingImage3,
          heading: 'Pet Training & Boarding',
          description:
              'Discover the joys of a well-behaved and confident pet through our expert training programs. Our certified trainers are dedicated to helping your furry friend develop essential skills, manners, and behaviors that make them a cherished member of your family and the community.'),
    ];
  }
}
