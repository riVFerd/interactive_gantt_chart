import 'package:flutter/material.dart';
import 'package:interactive_gantt_chart/interactive_gantt_chart.dart';

import 'dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<GanttData<Task, String>> ganttData = DummyData.data.map((task) {
    return GanttData<Task, String>(
      dateStart: task.start,
      dateEnd: task.end,
      data: task,
      label: task.name,
      subData: [
        GanttSubData(
          dateStart: task.start.add(const Duration(days: 1)),
          dateEnd: task.end,
          data: 'Sub ${task.name}',
          label: 'Sub ${task.name}',
        ),
        GanttSubData(
          dateStart: task.start.add(const Duration(days: 1)),
          dateEnd: task.end,
          data: 'Sub ${task.name}',
          label: 'Sub ${task.name}',
        ),
      ],
    );
  }).toList();

  @override
  void initState() {
    ganttData[0].subData.add(
          GanttSubData<String>(
            dateStart: ganttData[0].data.start,
            dateEnd: ganttData[0].data.end,
            data: ganttData[0].label,
            label: ganttData[0].data.name,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Hello, Gantt!'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GanttChart<Task, String>(
                    dayLabelStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    taskLabelBuilder: (data, index) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text('data $index'),
                      );
                    },
                    onInitScrollToCurrentDate: true,
                    data: ganttData,
                    onDragEnd: (data, index, _) {
                      ganttData[index] = data;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
