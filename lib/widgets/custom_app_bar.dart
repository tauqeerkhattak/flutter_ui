import 'package:flutter/material.dart';
import 'package:practice_channels/services/appbar_painter.dart';

class CustomAppBar {
  static PreferredSizeWidget getAppBar({
    required BuildContext context,
    required double height,
    bool? showBackButton = true,
    Function()? onActionsTapped,
    Color? backgroundColor,
    List<Widget>? children,
  }) {
    final width = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: Size(
        width,
        height,
      ),
      child: CustomPaint(
        painter: AppBarPainter(
          color: backgroundColor,
        ),
        child: SafeArea(
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children != null
                  ? [
                      SizedBox(
                        height: kBottomNavigationBarHeight,
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (showBackButton!)
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            const Spacer(),
                            if (onActionsTapped != null)
                              IconButton(
                                icon: const Icon(
                                  Icons.dehaze,
                                  color: Colors.white,
                                ),
                                onPressed: onActionsTapped,
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Column(
                          children: children,
                        ),
                      ),
                    ]
                  : [],
            ),
          ),
        ),
      ),
    );
  }
}
