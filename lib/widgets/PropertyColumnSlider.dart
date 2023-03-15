
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/PropertyColumn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PropertyColumnSlider extends StatefulWidget {
  final double hasSliderHeight;
  final double viewportFraction;
  final sliderData;
  final sliderPadding;
  const PropertyColumnSlider({Key? key,
    this.hasSliderHeight = 0,
    this.viewportFraction = 1,
    this.sliderData,
    this.sliderPadding = false
  }) : super(key: key);

  @override
  State<PropertyColumnSlider> createState() => _PropertyColumnSliderState();
}

class _PropertyColumnSliderState extends State<PropertyColumnSlider> {
  int _current = 0;

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          options: CarouselOptions(
            disableCenter: false,
            height: widget.hasSliderHeight,
            autoPlay: false,
            enlargeCenterPage: false,
            viewportFraction: widget.viewportFraction,
            aspectRatio: 1.0,
            initialPage: 0,
            enableInfiniteScroll: false,
            padEnds: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
              print(_current);
            },
          ),
          itemCount: widget.sliderData.length,
          itemBuilder: (BuildContext context, int index, int  pageViewIndex) {
            return PropertyColumn(
              propertyImage: widget.sliderData[index].propertyImage,
              propertyName: widget.sliderData[index].propertyName,
              propertyLocation: widget.sliderData[index].propertyLocation,
              propertyRatingText: widget.sliderData[index].propertyRatingText,
              hasPadding: widget.sliderPadding,
              columnPadding: index == 0 ? EdgeInsets.only(left: 20.w, right: 20.w) : EdgeInsets.only(left: 20.w, right: 20.w)
            );
          }
        ),
        Container(
          margin: EdgeInsets.only(top: 19.h, bottom: 0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.sliderData.asMap().entries.map<Widget>((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 16.w,
                  height: 16.w,
                  padding: EdgeInsets.all(4.w),
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(241, 95, 95, _current == entry.key ? 0.3 : 0),
                        offset: const Offset(0, 0),
                        blurRadius: 0,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Container(
                    width: 8.w,
                    height: 8.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (_current == entry.key
                        ? const Color.fromRGBO(241, 95, 95, 1)
                        : const Color.fromRGBO(119, 118, 130, 1))
                        .withOpacity(_current == entry.key ? 1 : 0.2),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
