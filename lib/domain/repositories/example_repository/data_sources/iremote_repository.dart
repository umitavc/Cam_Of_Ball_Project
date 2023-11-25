import 'package:cam_of_ball/core/extensions/dartz_extension.dart';
import 'package:cam_of_ball/data/models/example_model.dart';

abstract class IExampleRemoteRepository {
  Future<DataModel<ExampleModel>> getSomeData();
  Future<DataModel<List<ExampleModel>>> getSomeListData();
}
