import 'package:collaction_common/theme.dart';
import 'package:collaction_common/widgets/pill_button.dart';
import 'package:example/main.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Switch(
          value: Theme.of(context).brightness == Brightness.dark,
          onChanged: (value) {
            theme.value = value ? ThemeMode.dark : ThemeMode.light;
          }),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text('Default'),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        PillButton(
                          onTap: () {},
                          text: 'Text Button',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        PillButton(
                          onTap: () {},
                          isLoading: true,
                          text: 'Text Button',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        PillButton.icon(
                          onTap: () {},
                          text: 'Text Button',
                          leading: const Icon(Icons.upload),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButtonTheme(
                      data: context.theme.reverseElevatedButtonThemeData,
                      child: Column(
                        children: [
                          const Text('Light Background'),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          PillButton(
                            onTap: () {},
                            text: 'Text Button',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PillButton(
                            onTap: () {},
                            isLoading: true,
                            text: 'Text Button',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PillButton.icon(
                            onTap: () {},
                            text: 'Text Button',
                            leading: const Icon(Icons.upload),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
