import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/utils/png_image.dart';

import 'package:planit/presentation/theme/colors.dart';

class ShoppingBanner extends StatelessWidget {
  const ShoppingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 34,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.center,
            child: const DealCountDown(),
          ),
          FlutterCarousel(
            options: CarouselOptions(
              height: 160.0,
              viewportFraction: 1,
              autoPlay: true,
              showIndicator: true,
              slideIndicator: const CircularSlideIndicator(
                itemSpacing: 10,
                indicatorRadius: 3,
              ),
              indicatorMargin: 16,
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      PngImage.banner,
                      width: 120,
                      height: 150,
                      fit: BoxFit.fitHeight,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class DealCountDown extends StatefulWidget {
  const DealCountDown({super.key});

  @override
  State<DealCountDown> createState() => _DealCountDownState();
}

class _DealCountDownState extends State<DealCountDown> {
  Timer? _timer;
  Duration _duration = const Duration(hours: 5, minutes: 0); // Initial duration
  final Duration _tick = const Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(_tick, (timer) {
      setState(() {
        if (_duration.inSeconds > 0) {
          _duration -= _tick;
        } else {
          timer.cancel();
        }
      });
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours.remainder(24));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    return 'Deal Ends in ${hours}h : ${minutes}m';
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _formatDuration(_duration),
      style: GoogleFonts.bevan(
        fontSize: 20,
        color: AppColors.deepRed,
      ),
    );
  }
}
