import 'package:flutter_test/flutter_test.dart';
import 'package:build_visio_test/build_visio_test.dart';
import 'package:build_visio_test/build_visio_test_platform_interface.dart';
import 'package:build_visio_test/build_visio_test_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBuildVisioTestPlatform
    with MockPlatformInterfaceMixin
    implements BuildVisioTestPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BuildVisioTestPlatform initialPlatform = BuildVisioTestPlatform.instance;

  test('$MethodChannelBuildVisioTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBuildVisioTest>());
  });

  test('getPlatformVersion', () async {
    BuildVisioTest buildVisioTestPlugin = BuildVisioTest();
    MockBuildVisioTestPlatform fakePlatform = MockBuildVisioTestPlatform();
    BuildVisioTestPlatform.instance = fakePlatform;

    expect(await buildVisioTestPlugin.getPlatformVersion(), '42');
  });
}
