import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/presentation/home/shop/widgets/shimmer_loader.dart';
import 'package:planit/utils/png_image.dart';

import 'package:planit/presentation/theme/colors.dart';

class ShoppingBanner extends StatelessWidget {
  const ShoppingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        if (state.isFetching) {
          return const Padding(
            padding: EdgeInsets.all(0),
            child: Center(child: ShimmerLoader()),
          );
        } else if (state.banner.isEmpty) {
          return const SizedBox.shrink();
        }

        return Card(
          elevation: 3,
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          margin: const EdgeInsets.only(left: 17, right: 17, top: 3),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              FlutterCarousel(
                options: CarouselOptions(
                  height: 184.0,
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
                  return Column(
                    children: [
                      DealCountDown(
                        startDate: i.startingDate,
                        endDate: i.endingDate,
                      ),
                      Expanded(
                        child: Image.network(
                          i.bannerImages[0],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stack) {
                            if (error is NetworkImageLoadException &&
                                error.statusCode == 404) {
                              return Image.asset(
                                PngImage.placeholder,
                                fit: BoxFit.fitHeight,
                              );
                            }

                            return Image.asset(
                              PngImage.placeholder,
                              fit: BoxFit.fitHeight,
                            );
                          },
                        ),
                      ),
                    ],
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
                    color: AppColors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ],
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
  Duration _duration = Duration(
    hours: DateTime.now().hour,
    minutes: DateTime.now().minute,
    seconds: DateTime.now().second,
  ); // Initial duration
  final Duration _tick = const Duration(seconds: 60);

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
    final diff = widget.endDate.difference(DateTime.now());
    int twoDigits(int n) => int.parse(n.toString().padLeft(2, '0'));
    final hours = twoDigits(diff.inHours.remainder(24));
    final minutes = twoDigits(diff.inMinutes.remainder(60));
    final seconds = twoDigits(diff.inSeconds.remainder(60));

    if (hours <= 0 && minutes <= 00 && seconds <= 00) {
      return '';
    }
    return 'Deal Ends in ${hours}h : ${minutes}m';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return _formatDuration(_duration).isEmpty
        ? const SizedBox.shrink()
        : Text(
            _formatDuration(_duration),
            style: textTheme.labelLarge?.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.deepRed,
            ),
          );
  }
}
