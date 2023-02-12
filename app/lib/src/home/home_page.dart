import 'package:flutter/material.dart';
import 'package:todo_list/src/home/widgets/custom_drawer.dart';
import 'package:todo_list/src/shared/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(title: 'TODO List'),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(value: 0, label: Text('All')),
                  ButtonSegment(value: 1, label: Text('Pending')),
                  ButtonSegment(value: 2, label: Text('Completed')),
                  ButtonSegment(value: 3, label: Text('Deactivated')),
                ],
                selected: const {0},
                onSelectionChanged: (values) {},
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('New List'),
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
      ),
    );
  }
}
