import 'package:api_client/services/apiClient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Click to make request!",
            ),
            ElevatedButton(
              onPressed: () async {
                ApiClient apiClient = ApiClient();
                print(await apiClient.get(url: "https://gorest.co.in/public-api/users"));
              },
              child: const Text(
                "Click",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
