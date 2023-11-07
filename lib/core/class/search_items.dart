import 'package:flutter/material.dart';

import '../constant/imgaeasset.dart';
import '../constant/items_story_list.dart';

class Mysearchdelegat extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = "";
            }
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestion = result.where((searchresult) {
      final result = searchresult.toLowerCase();
      // final input = query.toLowerCase();
      return result.contains(query);
    }).toList();

    return ListView.builder(
      itemCount: suggestion.length,
      itemBuilder: (context, index) {
        final sug = suggestion[index];
        return InkWell(
          onTap: () {},
          child: Card(
            elevation: 5,
            color: Colors.white70,
            child: Center(
              child: ListTile(
                  onTap: () {
                    query = sug;
                    showResults(context);
                  },
                  subtitle: const Text("السعر : 15000"),
                  title: Text(sug,
                      style: const TextStyle(
                          fontFamily: "cairo", fontWeight: FontWeight.bold)),
                  trailing: Image.asset(
                    AppImageAsset.onBoardingImageThree,
                    height: 200,
                  )),
            ),
          ),
        );
      },
    );
  }
}
