import 'package:flutter/material.dart';
import './toddler_first_screen.dart';

class FirstPageScreen extends StatefulWidget {
  const FirstPageScreen({Key? key}) : super(key: key);

  @override
  _FirstPageScreenState createState() => _FirstPageScreenState();
}

class _FirstPageScreenState extends State<FirstPageScreen> with SingleTickerProviderStateMixin {

  late AnimationController _drawerSlideController;
  Duration duration = const Duration(milliseconds: 150);

  @override
  void initState() {
    super.initState();

    _drawerSlideController = AnimationController(vsync: this, duration: duration,);
  }

  @override
  void dispose() {
    _drawerSlideController.dispose();
    super.dispose();
  }

  bool _isDrawerOpen() {
    return _drawerSlideController.value == 1.0;
  }

  bool _isDrawerOpening() {
    return _drawerSlideController.status == AnimationStatus.forward;
  }

  bool _isDrawerClosed() {
    return _drawerSlideController.value == 0.0;
  }

  void _toggleDrawer() {
    if (_isDrawerOpen() || _isDrawerOpening()) {
      _drawerSlideController.reverse();
    } else {
      _drawerSlideController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: _buildAppBar(),
        body: Stack(
          children: [
            _buildContent(),
            _buildDrawer(),
          ],
        ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white70,
      actions: [
        AnimatedBuilder(
          builder: (context, child) {
            return IconButton(
              onPressed: _toggleDrawer,
              icon: _isDrawerOpen() || _isDrawerOpening()
                  ? const Icon(Icons.clear, color: Colors.grey,)
                  : const Icon(Icons.menu, color: Colors.orangeAccent,),
            );
          },
          animation: _drawerSlideController,
        ),
      ],
      title: const Text('Kids Learnings', style: TextStyle(
        fontSize: 24.0,
        color: Colors.orangeAccent,
      )),
    );
  }

  Widget _buildContent() {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              fixedSize: const Size(250, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Colors.white70,
              onPrimary: Colors.orangeAccent,// Background color
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ToddlerFirstScreen()),
              );
            },
            child: const Text('Toddler'),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              fixedSize: const Size(250, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              primary: Colors.white70,
              onPrimary: Colors.orangeAccent,// Background color
            ),
            onPressed: () {
              // Respond to button press
            },
            child: const Text("Child"),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return AnimatedBuilder(
      animation: _drawerSlideController,
      builder: (context, child) {
        return FractionalTranslation(
          translation: Offset(1.0 - _drawerSlideController.value, 0.0),
          child: _isDrawerClosed() ? const SizedBox() : const Menu(),
        );
      },
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  static const _menuTitles = [
    'Alphabets',
    'Numbers',
    'Shapes',
    'Colors',
  ];

  static const _initialDelayTime = Duration(milliseconds: 50);
  static const _itemSlideTime = Duration(milliseconds: 250);
  static const _staggerTime = Duration(milliseconds: 50);
  static const _buttonDelayTime = Duration(milliseconds: 150);
  static const _buttonTime = Duration(milliseconds: 500);
  final _animationDuration = _initialDelayTime + (_staggerTime * _menuTitles.length) + _buttonDelayTime + _buttonTime;

  late AnimationController _staggeredController;
  final List<Interval> _itemSlideIntervals = [];

  @override
  void initState() {
    super.initState();

    _createAnimationIntervals();
    _staggeredController = AnimationController(vsync: this, duration: _animationDuration,)..forward();
  }

  void _createAnimationIntervals() {
    for (var i = 0; i < _menuTitles.length; ++i) {
      final startTime = _initialDelayTime + (_staggerTime * i);
      final endTime = startTime + _itemSlideTime;
      _itemSlideIntervals.add(
        Interval(
          startTime.inMilliseconds / _animationDuration.inMilliseconds,
          endTime.inMilliseconds / _animationDuration.inMilliseconds,
        ),
      );
    }
  }

  @override
  void dispose() {
    _staggeredController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _buildFlutterLogo(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildFlutterLogo() {
    return const Positioned(
      right: -100,
      bottom: -30,
      child: Opacity(
        opacity: 0.2,
        child: FlutterLogo(
          size: 400,
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        ..._buildListItems(),
      ],
    );
  }

  List<Widget> _buildListItems() {
    final listItems = <Widget>[];
    for (var i = 0; i < _menuTitles.length; ++i) {
      listItems.add(
        AnimatedBuilder(
          animation: _staggeredController,
          builder: (context, child) {
            final animationPercent = Curves.easeOut.transform(
              _itemSlideIntervals[i].transform(_staggeredController.value),
            );
            final opacity = animationPercent;
            final slideDistance = (1.0 - animationPercent) * 150;

            return Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(slideDistance, 0),
                child: child,
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
            child: Text(
              _menuTitles[i],
              textAlign: TextAlign.left,
              style: const TextStyle(color: Colors.brown, fontSize: 19, fontWeight: FontWeight.w100,),
            ),
          ),
        ),
      );
    }
    return listItems;
  }
}
