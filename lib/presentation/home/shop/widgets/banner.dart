import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_loader.dart';
import 'package:planit/utils/png_image.dart';

import 'package:planit/presentation/theme/colors.dart';
import 'package:intl/intl.dart';

class ShoppingBanner extends StatelessWidget {
  const ShoppingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime firstDate;
    DateTime secondDate;
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        if (state.isFetching) {
          return const Padding(
            padding: EdgeInsets.all(0),
            child: Center(child: ShimmerLoader()),
          );
          // return const SizedBox(
          //   height: 100,
          //   width: double.infinity,
          //   child: Center(child: CircularProgressIndicator()),
          // );
        } else if (state.banner.isEmpty) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 3),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.lightGrey,
                  blurRadius: 3,
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const Padding(
                //   padding: EdgeInsets.only(top: 2, bottom: 2),
                //   child: DealCountDown(),
                // ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    FlutterCarousel(
                      options: CarouselOptions(
                        height: 200.0,
                        viewportFraction: 1,
                        autoPlay: true,
                        showIndicator: true,
                        slideIndicator: const CircularSlideIndicator(
                          itemSpacing: 10,
                          indicatorRadius: 3,
                        ),
                        indicatorMargin: 15,
                      ),
                      items: state.banner.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  DealCountDown(
                                    startDate: i.startingDate,
                                    endDate: i.endingDate,
                                  ),
                                  Image.network(
                                    i.bannerImages[0],
                                    fit: BoxFit.fitHeight,
                                    errorBuilder: (context, error, stack) {
                                      if (error is NetworkImageLoadException &&
                                          error.statusCode == 404) {
                                        return Image.asset(PngImage.banner);
                                      }

                                      return Image.asset(PngImage.banner);
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Positioned(
                      bottom: 12,
                      child: Container(
                        height: 12,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black.withOpacity(0.15),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DealCountDown extends StatefulWidget {
  const DealCountDown({
    super.key,
    required this.startDate,
    required this.endDate,
  });
  final DateTime startDate;
  final DateTime endDate;

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
    final diff = widget.endDate.difference(widget.startDate);
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(diff.inHours.remainder(24));
    final minutes = twoDigits(diff.inMinutes.remainder(60));
    final seconds = twoDigits(diff.inSeconds.remainder(60));
    return 'Deal Ends in ${hours}h : ${minutes}m : ${seconds}s';
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
