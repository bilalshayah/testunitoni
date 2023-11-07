import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testunitoni/controller/logInController.dart';
import 'package:testunitoni/view/widget/textfield_news.dart';

import '../widget/list_news.dart';

class TestUniToni extends StatelessWidget {
  const TestUniToni({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GetBuilder<TestControllerImp>(
            builder: (controller) => Column(
              children: [
                TextFieldNews(
                  onChanged: (value) {
                    controller.fetchData(value);
                  },
                  text: "Tesla1",
                  fillColor: Colors.red,
                ),
                const SizedBox(height: 30),
                TextFieldNews(
                  onChanged: (value) {
                    controller.fetchData(value);
                  },
                  text: "Tesla2",
                  fillColor: Colors.green,
                ),
                const ListNews(
                  color: Colors.red,
                ),
                const ListNews(
                  color: Colors.green,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
