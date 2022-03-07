import 'package:get/get.dart';

import '../models/record.dart';

class Controller extends GetxController {

  var records = <Record>[

    Record(dateTime: DateTime.now(),weight: 60, note: 'AAA'),
    Record(dateTime: DateTime.now(),weight: 61, note: 'BBB'),
    Record(dateTime: DateTime.now(),weight: 62, note: 'CCC'),
    Record(dateTime: DateTime.now(),weight: 63, note: 'DDD'),

  ].obs;

  void addRecord(){
    records.add(Record(dateTime: DateTime.now(),weight: 60, note: 'XXXXX'));
  }

  void deleteRecord(Record record){
    records.remove(record);
  }

}