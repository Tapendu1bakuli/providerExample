import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/notifier/home_notifier.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final textFieldModel = Provider.of<HomeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            TextFormField(
             onChanged: (value){
                textFieldModel.setFirstText(value);
             },
             decoration: const InputDecoration(
               hintText: "Email",
             ),
            ),
            TextFormField(
              onChanged: (value){
                textFieldModel.setSecondText(value);
              },
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('First: ${textFieldModel.firstText}, Second: ${textFieldModel.secondText}')),
                );
            }, child: const Text("Submit")),
            Text("Email"),
            Text("Password"),
          ],
        ),
      ),
    );
  }
}
