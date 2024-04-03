import 'package:carousel_slider/carousel_slider.dart';
import 'package:cosmetropolis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselWithConditionalArrows extends StatefulWidget {
  @override
  _CarouselWithConditionalArrowsState createState() => _CarouselWithConditionalArrowsState();
}

class _CarouselWithConditionalArrowsState extends State<CarouselWithConditionalArrows> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();
  final List<String> names = List.generate(7, (index) => 'Anthony & Jennifer Beauty lounge');
  final List<String> locations = List.generate(7, (index) => '2267 main st, Lake Mary, 74410');

  // Define a method to determine the number of items to show based on the screen width
  int _calculateVisibleItems(double screenWidth) {
    if (screenWidth >= 1920) {
      return 4;
    } else if (screenWidth >= 1200) {
      return 3;
    } else if (screenWidth >= 800) {
      return 2;
    } else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate the number of items to display based on screen width
    final itemsToShow = _calculateVisibleItems(screenWidth);

    final List<Widget> items = List.generate(
      7,
      (index) => SizedBox(
        width: screenWidth / itemsToShow, // Adjust the item width based on the number of items to show
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/Pro${(index % 4)+1}.png', fit: BoxFit.cover),
                Text(
                  names[index],
                  style: GoogleFonts.urbanist(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.normal,
                    color: kGreyFontColor,
                  ),
                ),
                Text(
                  locations[index],
                  style: GoogleFonts.urbanist(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal,
                    color: kGreyFontColor,
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              ],
            ),
            Positioned(
              right: 55,
              top: 0,
              child: Container(
                width: 106,
                height: 72,
                decoration: BoxDecoration(
                  color: kBlack.withOpacity(0.6),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(9),
                    bottomLeft: Radius.circular(9),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      '5.0',
                      style: GoogleFonts.urbanist(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: kWhite,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '375 Reviews',
                      style: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: kWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        
      ),
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          items: items,
          carouselController: _controller,
          options: CarouselOptions(
            aspectRatio: 2.0,
            viewportFraction: 1 / itemsToShow,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 16,
          child: _currentIndex > 0
              ? IconButton(
                  icon: const Icon(Icons.arrow_back, size: 30),
                  onPressed: () => _controller.previousPage(),
                )
              : Container(), // Hide if at the start
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 16,
          child: _currentIndex < items.length - 1
              ? IconButton(
                  icon: const Icon(Icons.arrow_forward, size: 30),
                  onPressed: () => _controller.nextPage(),
                )
              : Container(), // Hide if at the end
        ),
      ],
    );
  }
}
