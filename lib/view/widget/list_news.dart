import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testunitoni/controller/logInController.dart';

class ListNews extends GetView<TestControllerImp> {
  final Color? color;
  const ListNews({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.results.length,
      itemBuilder: (context, index) {
        final article = controller.results[index];
        return ListTile(
          title: Text(article['title'], style: TextStyle(color: color)),
          //      subtitle: Text(article['description']),
        );
      },
    );
  }
}
