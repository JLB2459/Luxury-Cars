import 'package:supabase_flutter/supabase_flutter.dart';

class CarListProvider {
  final supabase = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> fetchCarList() {
    final carList = supabase.from('Car').select<List<Map<String, dynamic>>>();

    return carList;
  }
}
