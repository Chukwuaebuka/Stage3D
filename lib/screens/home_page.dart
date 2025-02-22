import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _femaleAnimation = '';
  final String _maleAnimation = '';
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _femaleAnimation = 'Walk';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: ModelViewer(
                      key: ValueKey(_maleAnimation),
                      src: 'assets/glbFiles/maleAsset.glb',
                      alt: 'A 3D model of a chill guy',
                      disableZoom: true,
                      animationName: _maleAnimation,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: ModelViewer(
                      key: ValueKey(_femaleAnimation),
                      src: 'assets/glbFiles/femmeA_avatar.glb',
                      alt: 'A 3D model of a chill girl',
                      disableZoom: true,
                      animationName: _femaleAnimation,
                      autoPlay: _isPlaying,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _playAnimation('Walk');
                  },
                  child: const Text('Walk'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _playAnimation('Jump');
                  },
                  child: const Text('Jump'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _playAnimation('Run');
                  },
                  child: const Text('Run'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _playAnimation(String animationName) {
    debugPrint(animationName);
    setState(() {
      _femaleAnimation = animationName;
      _isPlaying = true;
    });

    Timer(const Duration(seconds: 4), () {
      setState(() {
        _isPlaying = false;
      });
    });
  }
}

// import 'package:flutter/material.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: const ModelViewer(
//                 backgroundColor: Colors.lightBlue,
//                 src:
//                     'https://models.readyplayer.me/67b47dd9ab0c5650906e31e6.glb',
//                 alt: 'A 3D model of a chill guy',
//                 ar: true,
//                 autoRotate: true,
//                 disableZoom: true,
//               ),
//             ),
//           ),
//           Expanded(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: const ModelViewer(
//                 backgroundColor: Colors.pinkAccent,
//                 src:
//                     'https://models.readyplayer.me/67b47ef8ef2b33d664e5ef04.glb',
//                 alt: 'A 3D model of a chill girl',
//                 ar: true,
//                 autoRotate: true,
//                 disableZoom: true,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(
//             child: SizedBox(
//               height: MediaQuery.of(context).size.height,
//               child: const ModelViewer(
//                 src: 'assets/glbFiles/maleAsset.glb',
//                 alt: 'A 3D model of a chill guy',
//                 disableZoom: true,
//               ),
//             ),
//           ),
//           Expanded(
//             child: SizedBox(
//               height: MediaQuery.of(context).size.height,
//               child: const ModelViewer(
//                 src: 'assets/glbFiles/femmeA_avatar.glb',
//                 alt: 'A 3D model of a chill girl',
//                 disableZoom: true,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
