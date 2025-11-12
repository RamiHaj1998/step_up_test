import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:step_up_test/core/utils/constant.dart';

import 'injection_container.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
Future<GetIt> configure() async => getIt.init();

Future<void> preConfigure() async {
  getIt.registerSingleton<String>(
    Constant.baseUrl,
    instanceName: 'BaseUrl',
  );
}
