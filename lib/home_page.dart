import 'package:flutter/material.dart';
import 'package:orientation/orientation_widget.dart';

const dogImageUrl =
    'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg';
const catImageUrl = 'https://i.insider.com/5aa10ca0d877e618008b4678?width=700';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Orientation'),
      ),
      body: const SafeArea(
        child: OrientationWidget(
          portrait: _PortraitContent(),
          landscape: _LandscapeContent(),
        ),
      ),
    );
  }
}

class _PortraitContent extends StatelessWidget {
  const _PortraitContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Portrait',
          style: TextStyle(
            fontSize: 70,
          ),
        ),
        Expanded(child: Image.network(dogImageUrl)),
      ],
    );
  }
}

class _LandscapeContent extends StatelessWidget {
  const _LandscapeContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Landscape',
          style: TextStyle(
            fontSize: 70,
          ),
        ),
        Expanded(child: Image.network(catImageUrl)),
      ],
    );
  }
}
