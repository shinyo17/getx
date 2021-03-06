import 'package:flutter/material.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Provider",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
            return Text(
              "${snapshot.count}",
              style: TextStyle(
                fontSize: 50,
              ),
            );
          }),
          // Text(
          //     "${context.watch<CountControllerWithProvider>().count}",
          //     style: TextStyle(
          //       fontSize: 50,
          //     ),
          //   ),
          ElevatedButton(
            onPressed: () {
              context.read<CountControllerWithProvider>().increase();
            },
            child: Text(
              "+",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
