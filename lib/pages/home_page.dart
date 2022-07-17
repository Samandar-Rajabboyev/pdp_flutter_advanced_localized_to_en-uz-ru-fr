import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'welcome'.tr(),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),

            // #buttons
            Row(
              children: [
                // #en
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    onPressed: () {
                      context.locale = Locale('en', "US");
                    },
                    child: const Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                // #ru
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: () {
                      context.locale = Locale('ru', "RU");
                    },
                    child: const Text(
                      "Russian",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 5),

                // #uz
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: () {
                      context.locale = Locale('uz', "UZ");
                    },
                    child: const Text(
                      "Uzbek",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),const SizedBox(width: 5),

                // #uz
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: () {
                      context.locale = Locale('Fri', "Fri");
                    },
                    child: const Text(
                      "French",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
