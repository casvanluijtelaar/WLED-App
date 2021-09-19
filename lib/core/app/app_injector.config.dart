// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/device_control/bloc/device_control_bloc.dart' as _i3;
import '../../features/device_list/bloc/device_list_bloc.dart' as _i8;
import '../../features/device_list/data/repository/device_list_repository.dart'
    as _i7;
import '../../features/device_list/data/src/mdns_device_discovery.dart' as _i5;
import '../../features/device_list/data/src/xml_parser.dart' as _i6;
import '../core.dart' as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.DeviceControlBloc>(
      () => _i3.DeviceControlBloc(get<_i4.AppRouter>()));
  gh.factory<_i5.MdnsDeviceDiscovery>(() => _i5.MdnsDeviceDiscovery());
  gh.factory<_i6.XmlParser>(() => _i6.XmlParser());
  gh.factory<_i7.DeviceListRepository>(() => _i7.DeviceListRepository(
      get<_i5.MdnsDeviceDiscovery>(), get<_i6.XmlParser>()));
  gh.factory<_i8.DeviceListBloc>(() => _i8.DeviceListBloc(
      get<_i7.DeviceListRepository>(), get<_i4.AppRouter>()));
  return get;
}
