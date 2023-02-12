import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/src/home/home_module.dart';
import 'package:todo_list/src/settings/settings_page.dart';

/// Responsible for routes and Dependency Injection
class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute('/settings', child: (context, args) => const SettingsPage()),
      ];
}
