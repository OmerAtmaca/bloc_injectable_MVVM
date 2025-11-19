import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';
import '../utils/dimens.dart';

class CustomBottomNavigation extends StatefulWidget {
  final Function onPositionChanged;
  final int requestedPosition;

  const CustomBottomNavigation({
    super.key,
    required this.onPositionChanged,
    int? requestedPosition,
  }) : requestedPosition = requestedPosition ?? 0;

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int currentPosition = 0;
  late double screenWidth;
  late double itemWidth;
  late double iconHeight;

  @override
  void initState() {
    currentPosition = widget.requestedPosition;
    super.initState();
  }

  void init() {
    screenWidth = MediaQuery.of(context).size.width;
    itemWidth = screenWidth / 2;
    iconHeight = itemWidth / 12;
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Container(
      padding: const EdgeInsets.only(top: 14),
      height: Dimens.navBarHeight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 15,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: BottomNavigationItem(
              itemWidth: itemWidth,
              image: "assets/ic_nav_home.png",
              title: "Anasayfa",
              iconWidth: iconHeight,
              onClicked: () => updatePosition(0),
              isSelected: currentPosition == 0,
            ),
          ),
          const Flexible(
              child: SizedBox(
            width: 60,
          )),
          Flexible(
            child: BottomNavigationItem(
              itemWidth: itemWidth,
              image: "assets/ic_nav_profile.png",
              title: "Profil",
              iconWidth: iconHeight,
              onClicked: () => updatePosition(1),
              isSelected: currentPosition == 1,
            ),
          ),
        ],
      ),
    );
  }

  void updatePosition(int position) {
    widget.onPositionChanged(position);
    setState(() => currentPosition = position);
  }
}

class BottomNavigationItem extends StatelessWidget {
  final double itemWidth;
  final double iconWidth;
  final String image;
  final String title;
  final bool isSelected;
  final VoidCallback onClicked;

  const BottomNavigationItem({
    required this.itemWidth,
    required this.image,
    required this.title,
    required this.iconWidth,
    required this.onClicked,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: onClicked,
          child: Stack(
            children: [
              Container(
                color: Colors.transparent,
                width: itemWidth,
                child: Container(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            image,
                            height: iconWidth,
                            fit: BoxFit.contain,
                            color: isSelected
                                ? CustomColors.danube
                                : CustomColors.tarawera,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: isSelected
                                  ? CustomColors.danube
                                  : CustomColors.tarawera,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
