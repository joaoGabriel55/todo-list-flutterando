import 'package:flutter/material.dart';
import 'package:todo_list/src/shared/widgets/custom_app_bar.dart';

class EditTaskBoardPage extends StatefulWidget {
  const EditTaskBoardPage({super.key});

  @override
  State<EditTaskBoardPage> createState() => _EditTaskBoardPageState();
}

class _EditTaskBoardPageState extends State<EditTaskBoardPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Edit'),
    );
  }
}
