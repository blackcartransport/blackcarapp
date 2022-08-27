import UIKit
import Braintree

import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyC4YFYximcDuX5li-jDvK6cqqn7Rqh3LQg")
    GeneratedPluginRegistrant.register(with: self)
    BTAppContextSwitcher.setReturnURLScheme("com.blackcartransport.blackcar.braintree")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
