import 'package:flutter/material.dart';
import 'package:flutter_getx_simple_state_manager_firstway/getxControllers/numbers_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<NumbersController>(
              init: NumbersController(),
              builder: (controller)=>Text(
              'Currunt Number is : ${controller.count}',
            textScaleFactor: 1.3,
            )
            ),

            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: ()=>Get.find<NumbersController>().increment(),
              child: const Text('Change', textScaleFactor: 1.3,)
            )
          ],
        ),
      ),
    );
  }
}
