// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/device_control/bloc/device_control_bloc.dart' as _i3;
import '../../features/device_list/bloc/device_list_bloc.dart' as _i7;
import '../../features/device_list/data/repository/device_list_repository.dart'
    as _i6;
import '../../features/device_list/data/src/mdns_device_discovery.dart' as _i4;
import '../../features/device_list/data/src/xml_parser.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.DeviceControlBloc>(() => _i3.DeviceControlBloc());
  gh.factory<_i4.MdnsDeviceDiscovery>(() => _i4.MdnsDeviceDiscovery());
  gh.factory<_i5.XmlParser>(() => _i5.XmlParser());
  gh.factory<_i6.DeviceListRepository>(() => _i6.DeviceListRepository(
      get<_i4.MdnsDeviceDiscovery>(), get<_i5.XmlParser>()));
  gh.factory<_i7.DeviceListBloc>(
      () => _i7.DeviceListBloc(get<_i6.DeviceListRepository>()));
  return get;
}
