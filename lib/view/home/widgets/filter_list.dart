import 'package:flutter/material.dart';
import 'package:pet_app/view/home/widgets/filter_box.dart';
import 'package:pet_app/view/models/filter_option.dart';

class FilterList extends StatelessWidget {
  final List<FilterOption> filterOptions;
  const FilterList({Key? key, required this.filterOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16, top: 20),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: filterOptions.length,
        itemBuilder: (context, index) {
          final filter = filterOptions[index];
          return FilterBox(option: filter);
        },
      ),
    );
  }
}
