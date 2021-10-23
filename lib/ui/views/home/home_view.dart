import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Stacked Introduction'),
                Text(model.myDeclaration),
                TextButton(
                  onPressed: () => model.updateDeclaration(),
                  child: const Text('Update Text'),
                ),
                TextButton(
                  onPressed: () => model.navigateToProfileView(),
                  child: const Text('Go To Profile View'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
