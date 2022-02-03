import 'dart:ui';

import 'package:boozimba/app/models/UserModel.dart';
import 'package:boozimba/app/models/storesModel.dart';
import 'package:boozimba/app/modules/booking/view/booking_view.dart';
import 'package:boozimba/app/modules/home/views/home_tab_view.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class StoryScreen extends StatefulWidget {
  final List<Story>? stories;

  const StoryScreen({@required this.stories});

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  PageController? _pageController;
  AnimationController? _animController;
  // VideoPlayerController _videoController;
  int _currentIndex = 0;

  bool _isButtonPreesd = false;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animController = AnimationController(vsync: this);

    final Story firstStory = widget.stories!.first;
    _loadStory(story: firstStory, animateToPage: false);

    _animController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animController!.stop();
        _animController!.reset();
        setState(() {
          if (_currentIndex + 1 < widget.stories!.length) {
            _currentIndex += 1;
            _loadStory(story: widget.stories![_currentIndex]);
          } else {
            // Out of bounds - loop story
            // You can also Navigator.of(context).pop() here
            _currentIndex = 0;
            _loadStory(story: widget.stories![_currentIndex]);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController!.dispose();
    _animController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Story story = widget.stories![_currentIndex];
    return Scaffold(
      floatingActionButton: FabCircularMenu(
        key: fabKey,
        // Cannot be `Alignment.center`
        alignment: Alignment.bottomRight,
        ringColor: Colors.white.withOpacity(0.1),
        ringDiameter: 200.0,
        ringWidth: 50.0,
        fabSize: MediaQuery.of(context).size.width * 0.1,
        fabElevation: 8.0,
        fabIconBorder: CircleBorder(),
        // Also can use specific color based on wether
        // the menu is open or not:
        // fabOpenColor: Colors.white
        // fabCloseColor: Colors.white
        // These properties take precedence over fabColor
        fabColor: Colors.white,
        fabOpenIcon: SvgPicture.asset(
          "assets/svgs/filter-icon.svg",
          // width: MediaQuery.of(context).size.width * 0.05,
          // height: MediaQuery.of(context).size.height * 0.06,
        ),
        // Icon(Icons.menu, color: Colors.black),

        fabCloseIcon: SvgPicture.asset("assets/svgs/sideBar.svg"),
        fabMargin: const EdgeInsets.all(16.0),
        animationDuration: const Duration(milliseconds: 800),
        animationCurve: Curves.easeInOutCirc,
        onDisplayChange: (isOpen) {},

        //  => isOpen
        //     ? () {
        //         _isButtonPreesd = true;
        //       }
        //     : () {
        //         _isButtonPreesd = false;
        //       },

        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(context, "You pressed 1");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/ll.svg"),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(context, "You pressed 2");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/filter-01.svg"),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(context, "You pressed 3");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/location.svg"),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(
              // context, "You pressed 4. This one closes the menu on tap");
              fabKey.currentState!.close();
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/heart.svg"),
          )
        ],
      ),
      // backgroundColor: Colors.black,
      body:

          // fabKey.currentState!.open()
          //     ? Stack(
          //         fit: StackFit.expand,
          //         children: [
          //           Image.asset('assets/images/filter.png', fit: BoxFit.cover),
          //           ClipRRect(
          //             // Clip it cleanly.
          //             child: BackdropFilter(
          //               filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          //               child: Container(),
          //             ),
          //           ),
          //         ],
          //       )
          //     :

          GestureDetector(
        onTapDown: (details) => _onTapDown(details, story),
        child: Stack(
          children: <Widget>[
            PageView.builder(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.stories!.length,
              itemBuilder: (context, i) {
                final Story story = widget.stories![i];

                return HomeTabView(
                  backgroundImagePath: story.url!,
                );
              },
            ),
            Positioned(
              top: 40.0,
              left: 10.0,
              right: 10.0,
              child: Column(
                children: <Widget>[
                  Row(
                    children: widget.stories!
                        .asMap()
                        .map((i, e) {
                          return MapEntry(
                            i,
                            AnimatedBar(
                              animController: _animController!,
                              position: i,
                              currentIndex: _currentIndex,
                            ),
                          );
                        })
                        .values
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1.5,
                      vertical: 10.0,
                    ),
                    child: UserInfo(user: story.user!),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details, Story story) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;
    if (dx < screenWidth / 3) {
      setState(() {
        if (_currentIndex - 1 >= 0) {
          _currentIndex -= 1;
          _loadStory(story: widget.stories![_currentIndex]);
        }
      });
    } else if (dx > 2 * screenWidth / 3) {
      setState(() {
        if (_currentIndex + 1 < widget.stories!.length) {
          _currentIndex += 1;
          _loadStory(story: widget.stories![_currentIndex]);
        } else {
          // Out of bounds - loop story
          // You can also Navigator.of(context).pop() here
          _currentIndex = 0;
          _loadStory(story: widget.stories![_currentIndex]);
        }
      });
    } else {
      // if (story.media == MediaType.video) {
      //   if (_videoController.value.isPlaying) {
      //     _videoController.pause();
      //     _animController.stop();
      //   } else {
      //     _videoController.play();
      //     _animController.forward();
      //   }
      // }
    }
  }

  void _loadStory({Story? story, bool animateToPage = true}) {
    _animController!.stop();
    _animController!.reset();
    switch (story!.media!) {
      case MediaType.image:
        _animController!.duration = story.duration!;
        _animController!.forward();
        break;
      case MediaType.video:
        // _videoController = null;
        // _videoController?.dispose();
        // _videoController = VideoPlayerController.network(story.url)
        //   ..initialize().then((_) {
        //     setState(() {});
        //     if (_videoController.value.initialized) {
        //       _animController.duration = _videoController.value.duration;
        //       _videoController.play();
        //       _animController.forward();
        //     }
        //   });
        break;
    }
    if (animateToPage) {
      _pageController!.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}

class AnimatedBar extends StatelessWidget {
  final AnimationController? animController;
  final int? position;
  final int? currentIndex;

  const AnimatedBar({
    @required this.animController,
    @required this.position,
    @required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.5),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: <Widget>[
                _buildContainer(
                  double.infinity,
                  position! < currentIndex!
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
                position! == currentIndex!
                    ? AnimatedBuilder(
                        animation: animController!,
                        builder: (context, child) {
                          return _buildContainer(
                            constraints.maxWidth * animController!.value,
                            Colors.white,
                          );
                        },
                      )
                    : const SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }

  Container _buildContainer(double width, Color color) {
    return Container(
      height: 5.0,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black26,
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final User? user;

  const UserInfo({
    @required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey[300],
          backgroundImage: NetworkImage(
            user!.profileImageUrl!,
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Text(
            user!.name!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // IconButton(
        //   icon: const Icon(
        //     Icons.close,
        //     size: 30.0,
        //     color: Colors.white,
        //   ),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
      ],
    );
  }
}
