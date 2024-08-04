import 'dart:math';
import 'package:flutetr_localization/core/constant.dart';
import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutetr_localization/screens/build_qoute_text.dart';
import 'package:flutetr_localization/state/cubit/apptheme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Size size;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return BlocBuilder<AppthemeCubit, AppthemeState>(
      builder: (context, state) {
        AppthemeCubit cubit = BlocProvider.of<AppthemeCubit>(context);

        return Scaffold(
          backgroundColor: const Color(0xFF414a4c),
          body: AnimatedContainer(
            color: cubit.val ? nightColor : dayColor,
            duration: const Duration(milliseconds: 300),
            child: Stack(
              children: <Widget>[
                ..._buildStars(20, cubit.val),

                Positioned(
                  left: 20,
                  top: 50,
                  child: DayNightSwitch(
                    value: cubit.val,
                    moonImage: const AssetImage('assets/moon.png'),
                    onChanged: (value) {
                      cubit.changevalue(value);
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  height: 200,
                  child: Opacity(
                    opacity: cubit.val ? 0 : 1.0,
                    child: Image.asset(
                      'assets/cloud.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  height: 200,
                  child: Image.asset(
                    cubit.val
                        ? 'assets/mountain2_night.png'
                        : 'assets/mountain2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 0,
                  right: 0,
                  height: 140,
                  child: Image.asset(
                    cubit.val
                        ? 'assets/mountain_night.png'
                        : 'assets/mountain1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: -20,
                          right: 0,
                          left: 0,
                          child: Transform.translate(
                            offset: Offset(50 * _controller.value, 0),
                            child: Opacity(
                              opacity: cubit.val ? 0.0 : 0.8,
                              child: Image.asset(
                                'assets/cloud2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -20,
                          right: 0,
                          left: 0,
                          child: Transform.translate(
                            offset: Offset(100 * _controller.value, 0),
                            child: Opacity(
                              opacity: cubit.val ? 0.0 : 0.4,
                              child: Image.asset(
                                'assets/cloud3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),

                const Center(
                  child: build_qoute(),
                ),

                // _buildSun(),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: Transform.translate(
            offset: const Offset(160, -360),
            child: _buildSun(cubit.val),
          ),
        );
      },
    );
  }

  Widget _buildSun(bool value) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: AnimatedBuilder(
        animation:
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
        builder: (context, child) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              _buildContainer(400 * _controller.value, value),
              _buildContainer(500 * _controller.value, value),
              _buildContainer(600 * _controller.value, value),
              SizedBox(
                width: 256,
                height: 256,
                child: value
                    ? Image.asset('assets/moon.png')
                    : const CircleAvatar(
                        backgroundColor: Color(0xFFFDB813),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContainer(double radius, bool value) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (value ? Colors.amber[100] : Colors.orangeAccent)
            ?.withOpacity(1 - _controller.value),
      ),
    );
  }

  List<Widget> _buildStars(int starCount, bool value) {
    List<Widget> stars = [];
    for (int i = 0; i < starCount; i++) {
      stars.add(_buildStar(top: randomX, left: randomY, val: value));
    }
    return stars;
  }

  double get randomX {
    int maxX = (size.height).toInt();
    return Random().nextInt(maxX).toDouble();
  }

  double get randomY {
    int maxY = (size.width).toInt();
    return Random().nextInt(maxY).toDouble();
  }

  Widget _buildStar({
    double top = 0,
    double left = 0,
    bool val = false,
  }) {
    return Positioned(
      top: top,
      left: left,
      child: Opacity(
        opacity: val ? 1 : 0,
        child: const CircleAvatar(
          radius: 2,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
