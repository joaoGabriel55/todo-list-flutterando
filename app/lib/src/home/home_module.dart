import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/src/edit_task_board/edit_task_board_page.dart';
import 'package:todo_list/src/home/home_page.dart';

/// Responsible for routes and Dependency Injection
class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/edit',
          child: (context, args) => const EditTaskBoardPage(),
        ),
      ];
}
