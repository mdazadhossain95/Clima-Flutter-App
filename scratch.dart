import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String resulttask2 = await task2();
  task3(resulttask2);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSeconds = const Duration(seconds: 3);

  String result;

  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return;
}

void task3(String task2label) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2label');
}
