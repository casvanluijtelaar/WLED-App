// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/device_add/bloc/device_add_bloc.dart' as _i13;
import '../../features/device_add/domain/device_add_repository.dart' as _i11;
import '../../features/device_control/bloc/device_control_bloc.dart' as _i4;
import '../../features/device_list/bloc/device_control_bloc.dart' as _i15;
import '../../features/device_list/bloc/device_list_bloc.dart' as _i16;
import '../../features/device_list/data/http_connection.dart' as _i7;
import '../../features/device_list/data/local_device_discovery.dart' as _i8;
import '../../features/device_list/data/mdns_device_discovery.dart' as _i9;
import '../../features/device_list/data/xml_parser.dart' as _i10;
import '../../features/device_list/domain/device_fetch_repository.dart' as _i14;
import '../../features/device_list/domain/device_update_repository.dart'
    as _i12;
import '../core.dart' as _i5;
import 'app_injector.dart' as _i17;
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
  gh.singleton<_i12.DeviceUpdateRepository>(_i12.DeviceUpdateRepository(
      get<_i10.XmlParser>(), get<_i7.HttpConnection>()));
  gh.factory<_i13.DeviceAddBloc>(() => _i13.DeviceAddBloc(
      get<_i5.AppRouter>(), get<_i11.DeviceAddRepository>()));
  gh.singleton<_i14.DeviceFetchRepository>(_i14.DeviceFetchRepository(
      get<_i9.MdnsDeviceDiscovery>(),
      get<_i8.LocalDeviceDiscovery>(),
      get<_i12.DeviceUpdateRepository>()));
  gh.lazySingleton<_i15.DeviceControlBloc>(() => _i15.DeviceControlBloc(
      get<_i14.DeviceFetchRepository>(),
      get<_i12.DeviceUpdateRepository>(),
      get<_i5.AppRouter>()));
  gh.factory<_i16.DeviceListBloc>(() => _i16.DeviceListBloc(
      get<_i14.DeviceFetchRepository>(),
      get<_i12.DeviceUpdateRepository>(),
      get<_i5.AppRouter>(),
      get<_i15.DeviceControlBloc>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
