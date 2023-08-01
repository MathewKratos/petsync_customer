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
              'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph.'),
      OnboardingModel(
          image: onboardingImage2,
          heading: 'Find best groomers',
          description:
              'Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph.'),
      OnboardingModel(
          image: onboardingImage3,
          heading: 'Pet Training & Boarding',
          description: 'Lorem ipsem.'),
    ];
  }
}
