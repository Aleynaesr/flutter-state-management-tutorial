import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_usage/models/record.dart';
import 'package:getx_usage/utils/controller.dart';
import 'package:getx_usage/widgets/buildRecordView.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;

    return Obx(() => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Weight Tracker"),
            actions: [
              IconButton(
                  onPressed: _controller.addRecord, icon: Icon(Icons.add))
            ],
          ),
          body: records.isEmpty
              ? Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.view_list,
                            color: Colors.grey,
                          )),
                      const Text(
                        'No Records',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
              )
              : ListView(
                  physics: const BouncingScrollPhysics(),
                  children: records
                      .map((record) => RecordView(record: record))
                      .toList()),
        ));
  }
}
