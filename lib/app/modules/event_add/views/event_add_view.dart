import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_add_controller.dart';

class EventAddView extends GetView<EventAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EventAddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EventAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
