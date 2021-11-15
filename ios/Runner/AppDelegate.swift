import UIKit
import Flutter
// #import <AlicloudAPM/AlicloudAPMProvider.h>
// #import <AlicloudHAUtil/AlicloudHAProvider.h>
// import AlicloudAPM
// import AlicloudHAUtil

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    // aliyun
    //  Converted to Swift 5.5 by Swiftify v5.5.21910 - https://swiftify.com/
let appVersion = "1.0.0"
let channel = "appstore"
let nick = "john"
AlicloudAPMProvider().autoInit(withAppVersion: appVersion, channel: channel, nick: nick)
//      AlicloudAPMProvider().autoInit(withAppVersion: <#T##String#>, channel: <#T##String#>, nick: <#T##String#>)
//      AlicloudAPMProvider.autoInit(<#T##self: AlicloudAPMProvider##AlicloudAPMProvider#>)
AlicloudHAProvider.start()

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
