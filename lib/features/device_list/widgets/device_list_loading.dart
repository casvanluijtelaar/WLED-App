import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeviceListLoadingWidget extends StatelessWidget {
  const DeviceListLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
