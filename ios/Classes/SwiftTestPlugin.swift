import Flutter
import UIKit

public class SwiftTestPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "test_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftTestPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        case "getBatteryLevel":
            result(88)
        default:
            result(FlutterMethodNotImplemented)
        }
  }
}
