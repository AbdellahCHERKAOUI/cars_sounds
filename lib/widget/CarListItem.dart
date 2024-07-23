import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:cars_sounds/models/car.dart';

class CarListItem extends StatefulWidget {
  final Car car;

  const CarListItem({required this.car, Key? key}) : super(key: key);

  @override
  _CarListItemState createState() => _CarListItemState();
}

class _CarListItemState extends State<CarListItem> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playSound() async {
    try {
      await _audioPlayer.play(AssetSource(widget.car.soundPath));
    } catch (e) {
      print("Error playing sound: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: _playSound,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.car.imagePath,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8.0),
            Text(
              widget.car.name,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
