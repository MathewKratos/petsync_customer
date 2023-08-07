import 'package:flutter/material.dart';
import 'package:petsync_customer/constants/sizing.dart';
import 'package:petsync_customer/models/onboarding_model.dart';
import 'package:petsync_customer/screens/onboarding/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  void dipose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<OnboardingModel> pages = OnboardingModel().items;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      extendBody: true,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() => currentPage = value);
            },
            children: List.generate(
                pages.length,
                (index) => OnboardWidget(
                    image: pages[index].image!,
                    heading: pages[index].heading!,
                    description: pages[index].description!)),
          ),
          if (currentPage < 2)
            Positioned(
              top: 30,
              right: 15,
              child: TextButton(
                  onPressed: () => _controller.animateToPage(2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                  child: const Text('skip')),
            ),
        ],
      ),
      // : ,
      bottomNavigationBar: currentPage < 2
          ? _buildBottomSheet()
          : Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Get Started'),
              ),
            ),
    );
  }

  Container _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /* Expanded(
            child: OutlinedButton(
                onPressed: () => _controller.animateToPage(2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
                child: const Text('skip')),
          ),
          const SizedBox(width: kDefaultPadding), */
          Expanded(
            child: ElevatedButton(
                onPressed: () => _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
                child: const Text('Next')),
          ),
        ],
      ),
    );
  }
}
