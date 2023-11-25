import 'package:cam_of_ball/core/extensions/list_extension.dart';
import 'package:cam_of_ball/data/repositories/example_repo/data_sources/example_hive_repository.dart';
import 'package:cam_of_ball/domain/repositories/example_repository/data_sources/ilocal_repository.dart';
import 'package:cam_of_ball/injection/injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';


final locator = GetIt.instance;
late final DataType environmentTag;

enum DataType {
  real,
  mock,
}

@InjectableInit(
  generateForDir: [
    'lib',
    'test',
  ],
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies({String? defaultEnv}) async {
  if (defaultEnv == null) {
    const data = String.fromEnvironment('DATA_TYPE');
    environmentTag = DataType.values.firstWhereOrDefault((element) => element.name == data, defaultValue: DataType.mock);
  } else {
    environmentTag = DataType.values.firstWhereOrDefault((element) => element.name == defaultEnv, defaultValue: DataType.mock);
  }

  ///
  /// Registiration of RestApiHttpService
  ///
 

  ///
  /// Register all local repositories
  ///
  /// You have to register all local repositories here.
  ///
  await _initSource<IExampleLocalRepository>(source: ExampleHiveRepository());

  $initGetIt(
    locator,
    environment: environmentTag.name,
  );
}

///
/// Register all sources
///
Future<void> _initSource<T extends Object>({required T source}) async {
  // await source.init();
  locator.registerLazySingleton<T>(
    () => source,
  );
}
