import 'package:get/get.dart';
import 'package:getx_todo_list/app/data/provider/task/provider.dart';
import 'package:getx_todo_list/app/data/services/storage/repository.dart';
import 'package:getx_todo_list/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
