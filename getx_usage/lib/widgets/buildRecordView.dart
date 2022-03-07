import 'package:flutter/material.dart';
import 'package:getx_usage/models/record.dart';
import 'package:getx_usage/utils/constants.dart';
import 'package:getx_usage/utils/controller.dart';
import 'package:intl/intl.dart';

import 'package:get/get.dart';

class RecordView extends StatelessWidget {
  final Record record;

  RecordView({Key? key, required this.record}) : super(key: key);
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding,right: padding,),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: ListTile(
            leading: _buildDate(),
            title: _buildWeight(),
            trailing: _buildIcons(),
          ),
        ),
      ),
    );
  }

  Row _buildIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.edit,
              color: Colors.grey,
            )),
        IconButton(
            onPressed: () {
              _controller.deleteRecord(record);
            },
            icon: const Icon(Icons.delete, color: primary)),
      ],
    );
  }
  Center _buildWeight() => Center(
      child: Text('${record.weight}',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));

  Text _buildDate() => Text(DateFormat('EEE, MMM d').format(record.dateTime));
}
