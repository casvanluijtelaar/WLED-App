// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/device_add/bloc/device_add_bloc.dart' as _i4;
import '../../features/device_control/bloc/device_control_bloc.dart' as _i6;
import '../../features/device_list/bloc/device_list_bloc.dart' as _i7;
import '../../features/device_list/data/local_device_discovery.dart' as _i9;
import '../../features/device_list/data/mdns_device_discovery.dart' as _i10;
import '../../features/device_list/domain/device_fetch_repository.dart' as _i11;
import '../../features/features.dart' as _i8;
import '../core.dart' as _i5;
import 'app_injector.dart' as _i12;
import 'app_router.gr.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppRouter>(() => registerModule.appRouter);
  gh.factory<_i4.DeviceAddBloc>(() => _i4.DeviceAddBloc(get<_i5.AppRouter>()));
  gh.factory<_i6.DeviceControlBloc>(
      () => _i6.DeviceControlBloc(get<_i5.AppRouter>()));
  gh.factory<_i7.DeviceListBloc>(() => _i7.DeviceListBloc(
      get<_i8.DeviceUpdateRepository>(), get<_i5.AppRouter>()));
  gh.factory<_i9.LocalDeviceDiscovery>(() => _i9.LocalDeviceDiscovery());
  gh.factory<_i10.MdnsDeviceDiscovery>(() => _i10.MdnsDeviceDiscovery());
  gh.singleton<_i11.DeviceFetchRepository>(_i11.DeviceFetchRepository(
      get<_i10.MdnsDeviceDiscovery>(),
      get<_i9.LocalDeviceDiscovery>(),
      get<_i8.DeviceUpdateRepository>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
