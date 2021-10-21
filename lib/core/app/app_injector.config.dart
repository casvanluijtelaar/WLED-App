// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/device_add/bloc/device_add_bloc.dart' as _i16;
import '../../features/device_add/domain/device_add_repository.dart' as _i11;
import '../../features/device_control/bloc/device_control_bloc.dart' as _i4;
import '../../features/device_list/bloc/device_list_bloc.dart' as _i17;
import '../../features/device_list/data/local_device_discovery.dart' as _i8;
import '../../features/device_list/data/mdns_device_discovery.dart' as _i9;
import '../../features/device_list/domain/device_list_repository.dart' as _i12;
import '../../features/device_list/domain/device_list_repository_impl.dart'
    as _i13;
import '../core.dart' as _i5;
import '../data/http_connection.dart' as _i7;
import '../data/xml_parser.dart' as _i10;
import '../domain/device_update_repository.dart' as _i14;
import '../domain/device_update_repository_impl.dart' as _i15;
import 'app_injector.dart' as _i18;
import 'app_router.gr.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(registerModule.appRouter);
  gh.factory<_i4.DeviceControlBloc>(
      () => _i4.DeviceControlBloc(get<_i5.AppRouter>()));
  gh.singleton<_i6.HiveInterface>(registerModule.hive);
  gh.lazySingleton<_i7.HttpConnection>(() => _i7.HttpConnection());
  gh.factory<_i8.LocalDeviceDiscovery>(
      () => _i8.LocalDeviceDiscovery(get<_i6.HiveInterface>()));
  gh.factory<_i9.MdnsDeviceDiscovery>(() => _i9.MdnsDeviceDiscovery());
  gh.factory<_i10.XmlParser>(() => _i10.XmlParser());
  gh.factory<_i11.DeviceAddRepository>(
      () => _i11.DeviceAddRepository(get<_i6.HiveInterface>()));
  gh.factory<_i12.DeviceListRepository>(() => _i13.DeviceListRepositoryImpl(
      get<_i9.MdnsDeviceDiscovery>(),
      get<_i8.LocalDeviceDiscovery>(),
      get<_i5.DeviceUpdateRepository>()));
  gh.factory<_i14.DeviceUpdateRepository>(() => _i15.DeviceUpdateRepositoryImpl(
      get<_i10.XmlParser>(), get<_i7.HttpConnection>()));
  gh.factory<_i16.DeviceAddBloc>(() => _i16.DeviceAddBloc(get<_i5.AppRouter>(),
      get<_i11.DeviceAddRepository>(), get<_i5.DeviceUpdateRepository>()));
  gh.factory<_i17.DeviceListBloc>(() => _i17.DeviceListBloc(
      get<_i12.DeviceListRepository>(),
      get<_i5.DeviceUpdateRepository>(),
      get<_i5.AppRouter>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
