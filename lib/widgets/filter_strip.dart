import 'package:flutter/material.dart';
import 'package:yt_clone/exports.dart';

class FilterStrip extends StatefulWidget {
  const FilterStrip({Key? key}) : super(key: key);

  @override
  State<FilterStrip> createState() => _FilterStripState();
}

class _FilterStripState extends State<FilterStrip> {
  final List<String> tags = [
    'All',
    'Music',
    'Computer progrmmming',
    'Computers',
    'Personal luxury cars',
    'Toyota Land Cruiser',
    'Off-road vehicles',
    'Editing',
    'Real Madrid CF',
    'Manchester City F.C.',
    'Bundesliga',
    'La Liga',
    'Aviation',
    'Recently uploaded',
    'Mixes',
    'Live',
    'New to you',
    'Watched',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.05,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        padding: const EdgeInsets.only(left: 20.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: FilterChip(
              side: BorderSide(color: Colors.grey.withOpacity(0.3)),
              label: Text(
                tags[index],
                style: TextStyle(
                  color: index == 0 ? Colors.white : Colors.black,
                ),
              ),
              backgroundColor:
                  index == 0 ? Colors.black : Colors.grey.withOpacity(0.1),
              onSelected: (value) {},
            ),
          );
        },
      ),
    );
  }
}
