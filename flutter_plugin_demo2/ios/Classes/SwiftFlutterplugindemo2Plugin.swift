import Flutter
import UIKit

public class SwiftFlutterplugindemo2Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutterplugindemo2", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterplugindemo2Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
