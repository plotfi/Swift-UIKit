@_exported import Foundation

enum UIStatusBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIStatusBarStyle { get }
  @available(iOS 7.0, *)
  case lightContent
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "lightContent")
  static var LightContent: UIStatusBarStyle { get }
  @available(iOS 13.0, *)
  case darkContent
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "darkContent")
  static var DarkContent: UIStatusBarStyle { get }
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "Use UIStatusBarStyleLightContent")
  static var blackTranslucent: UIStatusBarStyle { get }
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "Use UIStatusBarStyleLightContent")
  case blackOpaque
}
enum UIStatusBarAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIStatusBarAnimation { get }
  @available(iOS 3.2, *)
  case fade
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "fade")
  static var Fade: UIStatusBarAnimation { get }
  @available(iOS 3.2, *)
  case slide
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "slide")
  static var Slide: UIStatusBarAnimation { get }
}
enum UIInterfaceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unknown
  @available(swift, obsoleted: 3, renamed: "unknown")
  static var Unknown: UIInterfaceOrientation { get }
  case portrait
  @available(swift, obsoleted: 3, renamed: "portrait")
  static var Portrait: UIInterfaceOrientation { get }
  case portraitUpsideDown
  @available(swift, obsoleted: 3, renamed: "portraitUpsideDown")
  static var PortraitUpsideDown: UIInterfaceOrientation { get }
  case landscapeLeft
  @available(swift, obsoleted: 3, renamed: "landscapeLeft")
  static var LandscapeLeft: UIInterfaceOrientation { get }
  case landscapeRight
  @available(swift, obsoleted: 3, renamed: "landscapeRight")
  static var LandscapeRight: UIInterfaceOrientation { get }
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.invalidInterfaceOrientationException")
let UIApplicationInvalidInterfaceOrientationException: NSExceptionName
struct UIInterfaceOrientationMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIInterfaceOrientationMask
  typealias ArrayLiteralElement = UIInterfaceOrientationMask
  static var portrait: UIInterfaceOrientationMask { get }
  @available(swift, obsoleted: 3, renamed: "portrait")
  static var Portrait: UIInterfaceOrientationMask { get }
  static var landscapeLeft: UIInterfaceOrientationMask { get }
  @available(swift, obsoleted: 3, renamed: "landscapeLeft")
  static var LandscapeLeft: UIInterfaceOrientationMask { get }
  static var landscapeRight: UIInterfaceOrientationMask { get }
  @available(swift, obsoleted: 3, renamed: "landscapeRight")
  static var LandscapeRight: UIInterfaceOrientationMask { get }
  static var portraitUpsideDown: UIInterfaceOrientationMask { get }
  @available(swift, obsoleted: 3, renamed: "portraitUpsideDown")
  static var PortraitUpsideDown: UIInterfaceOrientationMask { get }
  static var landscape: UIInterfaceOrientationMask { get }
  @available(swift, obsoleted: 3, renamed: "landscape")
  static var Landscape: UIInterfaceOrientationMask { get }
  static var all: UIInterfaceOrientationMask { get }
  @available(swift, obsoleted: 3, renamed: "all")
  static var All: UIInterfaceOrientationMask { get }
  static var allButUpsideDown: UIInterfaceOrientationMask { get }
  @available(swift, obsoleted: 3, renamed: "allButUpsideDown")
  static var AllButUpsideDown: UIInterfaceOrientationMask { get }
}
@available(swift, obsoleted: 3, renamed: "getter:UIInterfaceOrientation.isPortrait(self:)")
func UIInterfaceOrientationIsPortrait(_ orientation: UIInterfaceOrientation) -> Bool
extension UIInterfaceOrientation {
  var isPortrait: Bool { get }
  var isLandscape: Bool { get }
}
@available(swift, obsoleted: 3, renamed: "getter:UIInterfaceOrientation.isLandscape(self:)")
func UIInterfaceOrientationIsLandscape(_ orientation: UIInterfaceOrientation) -> Bool
@available(iOS, introduced: 3.0, deprecated: 8.0, message: "Use UserNotifications Framework's UNAuthorizationOptions for user notifications and registerForRemoteNotifications for receiving remote notifications instead.")
struct UIRemoteNotificationType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIRemoteNotificationType
  typealias ArrayLiteralElement = UIRemoteNotificationType
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: UIRemoteNotificationType { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIRemoteNotificationType { get }
  static var badge: UIRemoteNotificationType { get }
  @available(swift, obsoleted: 3, renamed: "badge")
  static var Badge: UIRemoteNotificationType { get }
  static var sound: UIRemoteNotificationType { get }
  @available(swift, obsoleted: 3, renamed: "sound")
  static var Sound: UIRemoteNotificationType { get }
  static var alert: UIRemoteNotificationType { get }
  @available(swift, obsoleted: 3, renamed: "alert")
  static var Alert: UIRemoteNotificationType { get }
  static var newsstandContentAvailability: UIRemoteNotificationType { get }
  @available(swift, obsoleted: 3, renamed: "newsstandContentAvailability")
  static var NewsstandContentAvailability: UIRemoteNotificationType { get }
}
@available(iOS 7.0, *)
enum UIBackgroundFetchResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case newData
  @available(swift, obsoleted: 3, renamed: "newData")
  static var NewData: UIBackgroundFetchResult { get }
  case noData
  @available(swift, obsoleted: 3, renamed: "noData")
  static var NoData: UIBackgroundFetchResult { get }
  case failed
  @available(swift, obsoleted: 3, renamed: "failed")
  static var Failed: UIBackgroundFetchResult { get }
}
@available(iOS 7.0, *)
enum UIBackgroundRefreshStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case restricted
  @available(swift, obsoleted: 3, renamed: "restricted")
  static var Restricted: UIBackgroundRefreshStatus { get }
  case denied
  @available(swift, obsoleted: 3, renamed: "denied")
  static var Denied: UIBackgroundRefreshStatus { get }
  case available
  @available(swift, obsoleted: 3, renamed: "available")
  static var Available: UIBackgroundRefreshStatus { get }
}
@available(iOS 4.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.State")
typealias UIApplicationState = UIApplication.State
struct UIBackgroundTaskIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: Int)
  let rawValue: Int
  typealias RawValue = Int
}
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIBackgroundTaskIdentifier.invalid")
let UIBackgroundTaskInvalid: UIBackgroundTaskIdentifier
extension UIBackgroundTaskIdentifier {
  @available(iOS 4.0, *)
  static let invalid: UIBackgroundTaskIdentifier
}
@available(iOS, introduced: 4.0, deprecated: 13.0, message: "Please use PushKit for VoIP applications.")
let UIMinimumKeepAliveTimeout: TimeInterval
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.backgroundFetchIntervalMinimum")
let UIApplicationBackgroundFetchIntervalMinimum: TimeInterval
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.backgroundFetchIntervalNever")
let UIApplicationBackgroundFetchIntervalNever: TimeInterval
@available(swift, obsoleted: 3, renamed: "UIApplication.OpenExternalURLOptionsKey")
typealias UIApplicationOpenExternalURLOptionsKey = UIApplication.OpenExternalURLOptionsKey
@available(iOS 2.0, *)
class UIApplication : UIResponder {
  class var shared: UIApplication { get }
  @available(swift, obsoleted: 3, renamed: "shared")
  class var sharedApplication: UIApplication { get }
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIView's userInteractionEnabled property instead")
  func beginIgnoringInteractionEvents()
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIView's userInteractionEnabled property instead")
  func endIgnoringInteractionEvents()
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIView's userInteractionEnabled property instead")
  var isIgnoringInteractionEvents: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isIgnoringInteractionEvents")
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIView's userInteractionEnabled property instead")
  var ignoringInteractionEvents: Bool { get }
  var isIdleTimerDisabled: Bool
  @available(swift, obsoleted: 3, renamed: "isIdleTimerDisabled")
  var idleTimerDisabled: Bool
  @available(iOS, introduced: 2.0, deprecated: 10.0)
  func openURL(_ url: URL) -> Bool
  @available(iOS 3.0, *)
  func canOpenURL(_ url: URL) -> Bool
  @available(iOS 10.0, *)
  func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any] = [:], completionHandler completion: ((Bool) -> Void)? = nil)
  @available(iOS 10.0, *)
  func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any] = [:]) async -> Bool
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "open(_:options:completionHandler:)")
  func openURL(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any] = [:], completionHandler completion: ((Bool) -> Void)? = nil)
  func sendEvent(_ event: UIEvent)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Should not be used for applications that support multiple scenes as it returns a key window across all connected scenes")
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(_ action: Selector, to target: Any?, from sender: Any?, for event: UIEvent?) -> Bool
  @available(swift, obsoleted: 3, renamed: "sendAction(_:to:from:for:)")
  func sendAction(_ action: Selector, to target: Any?, from sender: Any?, forEvent event: UIEvent?) -> Bool
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Provide a custom network activity UI in your app if desired.")
  var isNetworkActivityIndicatorVisible: Bool
  @available(swift, obsoleted: 3, renamed: "isNetworkActivityIndicatorVisible")
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Provide a custom network activity UI in your app if desired.")
  var networkActivityIndicatorVisible: Bool
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the statusBarManager property of the window scene instead.")
  var statusBarStyle: UIStatusBarStyle { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the statusBarManager property of the window scene instead.")
  var isStatusBarHidden: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isStatusBarHidden")
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the statusBarManager property of the window scene instead.")
  var statusBarHidden: Bool { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the interfaceOrientation property of the window scene instead.")
  var statusBarOrientation: UIInterfaceOrientation { get }
  @available(iOS 6.0, *)
  func supportedInterfaceOrientations(for window: UIWindow?) -> UIInterfaceOrientationMask
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "supportedInterfaceOrientations(for:)")
  func supportedInterfaceOrientationsForWindow(_ window: UIWindow?) -> UIInterfaceOrientationMask
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  var statusBarOrientationAnimationDuration: TimeInterval { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the statusBarManager property of the window scene instead.")
  var statusBarFrame: CGRect { get }
  var applicationIconBadgeNumber: Int
  @available(iOS 3.0, *)
  var applicationSupportsShakeToEdit: Bool
  @available(iOS 4.0, *)
  var applicationState: UIApplication.State { get }
  @available(iOS 4.0, *)
  var backgroundTimeRemaining: TimeInterval { get }
  @available(iOS 4.0, *)
  func beginBackgroundTask(expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "beginBackgroundTask(expirationHandler:)")
  func beginBackgroundTaskWithExpirationHandler(_ handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 7.0, *)
  func beginBackgroundTask(withName taskName: String?, expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "beginBackgroundTask(withName:expirationHandler:)")
  func beginBackgroundTaskWithName(_ taskName: String?, expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 4.0, *)
  func endBackgroundTask(_ identifier: UIBackgroundTaskIdentifier)

  /** The system guarantees that it will not wake up your application for a background fetch more
      frequently than the interval provided. Set to UIApplicationBackgroundFetchIntervalMinimum to be
      woken as frequently as the system desires, or to UIApplicationBackgroundFetchIntervalNever (the
      default) to never be woken for a background fetch.
   
      This setter will have no effect unless your application has the "fetch" 
      UIBackgroundMode. See the UIApplicationDelegate method
      `application:performFetchWithCompletionHandler:` for more. */
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use a BGAppRefreshTask in the BackgroundTasks framework instead")
  func setMinimumBackgroundFetchInterval(_ minimumBackgroundFetchInterval: TimeInterval)

  /** When background refresh is available for an application, it may launched or resumed in the background to handle significant
      location changes, remote notifications, background fetches, etc. Observe UIApplicationBackgroundRefreshStatusDidChangeNotification to
      be notified of changes. */
  @available(iOS 7.0, *)
  var backgroundRefreshStatus: UIBackgroundRefreshStatus { get }
  @available(iOS 4.0, *)
  var isProtectedDataAvailable: Bool { get }
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "isProtectedDataAvailable")
  var protectedDataAvailable: Bool { get }
  @available(iOS 5.0, *)
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  @available(iOS 7.0, *)
  var preferredContentSizeCategory: UIContentSizeCategory { get }
  @available(iOS 13.0, *)
  var connectedScenes: Set<UIScene> { get }
  @available(iOS 13.0, *)
  var openSessions: Set<UISceneSession> { get }
  @available(iOS 13.0, *)
  var supportsMultipleScenes: Bool { get }
  @available(iOS 13.0, *)
  func requestSceneSessionActivation(_ sceneSession: UISceneSession?, userActivity: NSUserActivity?, options: UIScene.ActivationRequestOptions?, errorHandler: ((Error) -> Void)? = nil)
  @available(iOS 13.0, *)
  func requestSceneSessionDestruction(_ sceneSession: UISceneSession, options: UISceneDestructionRequestOptions?, errorHandler: ((Error) -> Void)? = nil)
  @available(iOS 13.0, *)
  func requestSceneSessionRefresh(_ sceneSession: UISceneSession)
  init()
}
extension UIApplication {
  @available(iOS 8.0, *)
  func registerForRemoteNotifications()
  @available(iOS 3.0, *)
  func unregisterForRemoteNotifications()
  @available(iOS 8.0, *)
  var isRegisteredForRemoteNotifications: Bool { get }
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "isRegisteredForRemoteNotifications")
  var registeredForRemoteNotifications: Bool { get }
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Use -[UIApplication registerForRemoteNotifications] and UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:]")
  func registerForRemoteNotifications(matching types: UIRemoteNotificationType)
  @available(swift, obsoleted: 3, renamed: "registerForRemoteNotifications(matching:)")
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Use -[UIApplication registerForRemoteNotifications] and UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:]")
  func registerForRemoteNotificationTypes(_ types: UIRemoteNotificationType)
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Use -[UIApplication isRegisteredForRemoteNotifications] and UserNotifications Framework's -[UNUserNotificationCenter getNotificationSettingsWithCompletionHandler:] to retrieve user-enabled remote notification and user notification settings")
  func enabledRemoteNotificationTypes() -> UIRemoteNotificationType
}
extension UIApplication {
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter addNotificationRequest:withCompletionHandler:]")
  func presentLocalNotificationNow(_ notification: UILocalNotification)
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter addNotificationRequest:withCompletionHandler:]")
  func scheduleLocalNotification(_ notification: UILocalNotification)
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter removePendingNotificationRequestsWithIdentifiers:]")
  func cancelLocalNotification(_ notification: UILocalNotification)
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter removeAllPendingNotificationRequests]")
  func cancelAllLocalNotifications()
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter getPendingNotificationRequestsWithCompletionHandler:]")
  var scheduledLocalNotifications: [UILocalNotification]?
}
extension UIApplication {
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:] and -[UNUserNotificationCenter setNotificationCategories:]")
  func registerUserNotificationSettings(_ notificationSettings: UIUserNotificationSettings)
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter getNotificationSettingsWithCompletionHandler:] and -[UNUserNotificationCenter getNotificationCategoriesWithCompletionHandler:]")
  var currentUserNotificationSettings: UIUserNotificationSettings? { get }
}
extension UIApplication {
  @available(iOS 4.0, *)
  func beginReceivingRemoteControlEvents()
  @available(iOS 4.0, *)
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
  @available(iOS, introduced: 5.0, deprecated: 9.0, message: "Newsstand apps now behave like normal apps on SpringBoard")
  func setNewsstandIconImage(_ image: UIImage?)
}
extension UIApplication {
  @available(iOS 9.0, *)
  var shortcutItems: [UIApplicationShortcutItem]?
}
extension UIApplication {
  @available(iOS 10.3, *)
  var supportsAlternateIcons: Bool { get }
  @available(iOS 10.3, *)
  func setAlternateIconName(_ alternateIconName: String?, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 10.3, *)
  func setAlternateIconName(_ alternateIconName: String?) async throws
  @available(iOS 10.3, *)
  var alternateIconName: String? { get }
}
extension UIApplication {
  @available(iOS 6.0, *)
  func extendStateRestoration()
  @available(iOS 6.0, *)
  func completeStateRestoration()
  @available(iOS 7.0, *)
  func ignoreSnapshotOnNextApplicationLaunch()
  @available(iOS 7.0, *)
  class func registerObject(forStateRestoration object: UIStateRestoring, restorationIdentifier: String)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "registerObject(forStateRestoration:restorationIdentifier:)")
  class func registerObjectForStateRestoration(_ object: UIStateRestoring, restorationIdentifier: String)
}
@available(swift, obsoleted: 4.2, renamed: "UIApplication.LaunchOptionsKey")
typealias UIApplicationLaunchOptionsKey = UIApplication.LaunchOptionsKey
extension UIApplication {
  struct LaunchOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  struct OpenURLOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  struct ExtensionPointIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  @available(iOS 4.0, *)
  class let didEnterBackgroundNotification: NSNotification.Name
  @available(iOS 4.0, *)
  class let willEnterForegroundNotification: NSNotification.Name
  class let didFinishLaunchingNotification: NSNotification.Name
  class let didBecomeActiveNotification: NSNotification.Name
  class let willResignActiveNotification: NSNotification.Name
  class let didReceiveMemoryWarningNotification: NSNotification.Name
  class let willTerminateNotification: NSNotification.Name
  class let significantTimeChangeNotification: NSNotification.Name
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let willChangeStatusBarOrientationNotification: NSNotification.Name
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let didChangeStatusBarOrientationNotification: NSNotification.Name
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let statusBarOrientationUserInfoKey: String
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let willChangeStatusBarFrameNotification: NSNotification.Name
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let didChangeStatusBarFrameNotification: NSNotification.Name
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let statusBarFrameUserInfoKey: String
  @available(iOS 7.0, *)
  class let backgroundRefreshStatusDidChangeNotification: NSNotification.Name
  @available(iOS 4.0, *)
  class let protectedDataWillBecomeUnavailableNotification: NSNotification.Name
  @available(iOS 4.0, *)
  class let protectedDataDidBecomeAvailableNotification: NSNotification.Name
  @available(iOS 8.0, *)
  class let openSettingsURLString: String
  @available(iOS 7.0, *)
  class let userDidTakeScreenshotNotification: NSNotification.Name
  @available(iOS 6.0, *)
  class let invalidInterfaceOrientationException: NSExceptionName
  @available(iOS 4.0, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case active
    @available(swift, obsoleted: 3, renamed: "active")
    static var Active: UIApplication.State { get }
    case inactive
    @available(swift, obsoleted: 3, renamed: "inactive")
    static var Inactive: UIApplication.State { get }
    case background
    @available(swift, obsoleted: 3, renamed: "background")
    static var Background: UIApplication.State { get }
  }
  @available(iOS 7.0, *)
  class let backgroundFetchIntervalMinimum: TimeInterval
  @available(iOS 7.0, *)
  class let backgroundFetchIntervalNever: TimeInterval
  struct OpenExternalURLOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
protocol UIApplicationDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func applicationDidFinishLaunching(_ application: UIApplication)
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool
  @available(iOS 3.0, *)
  optional func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidBecomeActive(_ application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillResignActive(_ application: UIApplication)
  @available(iOS, introduced: 2.0, deprecated: 9.0)
  optional func application(_ application: UIApplication, handleOpen url: URL) -> Bool
  @available(swift, obsoleted: 3, renamed: "application(_:handleOpen:)")
  @available(iOS, introduced: 2.0, deprecated: 9.0)
  optional func application(_ application: UIApplication, handleOpenURL url: URL) -> Bool
  @available(iOS, introduced: 4.2, deprecated: 9.0)
  optional func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool
  @available(swift, obsoleted: 3, renamed: "application(_:open:sourceApplication:annotation:)")
  @available(iOS, introduced: 4.2, deprecated: 9.0)
  optional func application(_ application: UIApplication, openURL url: URL, sourceApplication: String?, annotation: Any) -> Bool
  @available(iOS 9.0, *)
  optional func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:open:options:)")
  optional func application(_ app: UIApplication, openURL url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidReceiveMemoryWarning(_ application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillTerminate(_ application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationSignificantTimeChange(_ application: UIApplication)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect)
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:]")
  optional func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings)
  @available(swift, obsoleted: 3, renamed: "application(_:didRegister:)")
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:]")
  optional func application(_ application: UIApplication, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings)
  @available(iOS 3.0, *)
  optional func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
  @available(iOS 3.0, *)
  optional func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error)
  @available(iOS, introduced: 3.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:] or -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:] for user visible notifications and -[UIApplicationDelegate application:didReceiveRemoteNotification:fetchCompletionHandler:] for silent remote notifications")
  optional func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any])
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:] or -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, didReceive notification: UILocalNotification)
  @available(swift, obsoleted: 3, renamed: "application(_:didReceive:)")
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:] or -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, didReceiveLocalNotification notification: UILocalNotification)
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, completionHandler: @escaping () -> Void)
  @available(iOS, unavailable, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification) async
  @available(swift, obsoleted: 3, renamed: "application(_:handleActionWithIdentifier:for:completionHandler:)")
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, completionHandler: @escaping () -> Void)
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any], withResponseInfo responseInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void)
  @available(iOS, unavailable, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any], withResponseInfo responseInfo: [AnyHashable : Any]) async
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void)
  @available(iOS, unavailable, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any]) async
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, withResponseInfo responseInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void)
  @available(iOS, unavailable, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, withResponseInfo responseInfo: [AnyHashable : Any]) async
  @available(swift, obsoleted: 3, renamed: "application(_:handleActionWithIdentifier:for:withResponseInfo:completionHandler:)")
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, withResponseInfo responseInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void)

  /** This delegate method offers an opportunity for applications with the "remote-notification" background mode to fetch appropriate new data in response to an incoming remote notification. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
   
   This method will be invoked even if the application was launched or resumed because of the remote notification. The respective delegate methods will be invoked first. Note that this behavior is in contrast to application:didReceiveRemoteNotification:, which is not called in those cases, and which will not be invoked if this method is implemented. !*/
  @available(iOS 7.0, *)
  optional func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void)

  /** This delegate method offers an opportunity for applications with the "remote-notification" background mode to fetch appropriate new data in response to an incoming remote notification. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
   
   This method will be invoked even if the application was launched or resumed because of the remote notification. The respective delegate methods will be invoked first. Note that this behavior is in contrast to application:didReceiveRemoteNotification:, which is not called in those cases, and which will not be invoked if this method is implemented. !*/
  @available(iOS 7.0, *)
  optional func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) async -> UIBackgroundFetchResult

  /// Applications with the "fetch" background mode may be given opportunities to fetch updated content in the background or when it is convenient for the system. This method will be called in these situations. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use a BGAppRefreshTask in the BackgroundTasks framework instead")
  optional func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void)

  /// Applications with the "fetch" background mode may be given opportunities to fetch updated content in the background or when it is convenient for the system. This method will be called in these situations. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use a BGAppRefreshTask in the BackgroundTasks framework instead")
  optional func applicationPerformFetch(_ application: UIApplication) async -> UIBackgroundFetchResult
  @available(iOS 9.0, *)
  optional func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void)
  @available(iOS 9.0, *)
  optional func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem) async -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:performActionFor:completionHandler:)")
  optional func application(_ application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void)
  @available(iOS 7.0, *)
  optional func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void)
  @available(iOS 7.0, *)
  optional func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String) async
  @available(iOS 8.2, *)
  optional func application(_ application: UIApplication, handleWatchKitExtensionRequest userInfo: [AnyHashable : Any]?, reply: @escaping ([AnyHashable : Any]?) -> Void)
  @available(iOS 8.2, *)
  optional func application(_ application: UIApplication, handleWatchKitExtensionRequest userInfo: [AnyHashable : Any]?) async -> [AnyHashable : Any]?
  @available(iOS 9.0, *)
  optional func applicationShouldRequestHealthAuthorization(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationDidEnterBackground(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationWillEnterForeground(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication)
  @available(iOS 5.0, *)
  optional var window: UIWindow? { get set }
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:supportedInterfaceOrientationsFor:)")
  optional func application(_ application: UIApplication, supportedInterfaceOrientationsForWindow window: UIWindow?) -> UIInterfaceOrientationMask
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: UIApplication.ExtensionPointIdentifier) -> Bool
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIViewController?
  @available(iOS 13.2, *)
  optional func application(_ application: UIApplication, shouldSaveSecureApplicationState coder: NSCoder) -> Bool
  @available(iOS 13.2, *)
  optional func application(_ application: UIApplication, shouldRestoreSecureApplicationState coder: NSCoder) -> Bool
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, willEncodeRestorableStateWith coder: NSCoder)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:willEncodeRestorableStateWith:)")
  optional func application(_ application: UIApplication, willEncodeRestorableStateWithCoder coder: NSCoder)
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, didDecodeRestorableStateWith coder: NSCoder)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:didDecodeRestorableStateWith:)")
  optional func application(_ application: UIApplication, didDecodeRestorableStateWithCoder coder: NSCoder)
  @available(iOS, introduced: 6.0, deprecated: 13.2, message: "Use application:shouldSaveSecureApplicationState: instead")
  optional func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool
  @available(iOS, introduced: 6.0, deprecated: 13.2, message: "Use application:shouldRestoreSecureApplicationState: instead")
  optional func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:continue:restorationHandler:)")
  optional func application(_ application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:didUpdate:)")
  optional func application(_ application: UIApplication, didUpdateUserActivity userActivity: NSUserActivity)
  @available(iOS 13.0, *)
  optional func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "application(_:configurationForConnecting:options:)")
  optional func application(_ application: UIApplication, configurationForConnectingSceneSession connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
  @available(iOS 13.0, *)
  optional func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)
}

extension UIApplicationDelegate {
  @_alwaysEmitIntoClient static func main()
}
@available(swift, obsoleted: 4.2, renamed: "UIApplication.OpenURLOptionsKey")
typealias UIApplicationOpenURLOptionsKey = UIApplication.OpenURLOptionsKey
@available(swift, obsoleted: 4.2, renamed: "UIApplication.ExtensionPointIdentifier")
typealias UIApplicationExtensionPointIdentifier = UIApplication.ExtensionPointIdentifier
extension UIApplication {
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var isProximitySensingEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isProximitySensingEnabled")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var proximitySensingEnabled: Bool
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.2, message: "Use -[UIViewController prefersStatusBarHidden]")
  func setStatusBarHidden(_ hidden: Bool, animated: Bool)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  func setStatusBarOrientation(_ interfaceOrientation: UIInterfaceOrientation, animated: Bool)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use -[UIViewController preferredStatusBarStyle]")
  func setStatusBarStyle(_ statusBarStyle: UIStatusBarStyle, animated: Bool)
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use -[UIViewController prefersStatusBarHidden]")
  func setStatusBarHidden(_ hidden: Bool, with animation: UIStatusBarAnimation)
  @available(swift, obsoleted: 3, renamed: "setStatusBarHidden(_:with:)")
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use -[UIViewController prefersStatusBarHidden]")
  func setStatusBarHidden(_ hidden: Bool, withAnimation animation: UIStatusBarAnimation)
  @available(iOS, introduced: 4.0, deprecated: 9.0, message: "Please use PushKit for VoIP applications instead of calling this method")
  func setKeepAliveTimeout(_ timeout: TimeInterval, handler keepAliveHandler: (() -> Void)? = nil) -> Bool
  @available(iOS, introduced: 4.0, deprecated: 9.0, message: "Please use PushKit for VoIP applications instead of calling this method")
  func clearKeepAliveTimeout()
}
func UIApplicationMain(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
@available(swift, obsoleted: 3, renamed: "RunLoop.Mode.tracking")
let UITrackingRunLoopMode: RunLoop.Mode
extension RunLoop.Mode {
  static let tracking: RunLoop.Mode
  @available(swift, obsoleted: 4.2, renamed: "RunLoop.Mode.tracking")
  static let UITrackingRunLoopMode: RunLoop.Mode
}
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.didEnterBackgroundNotification")
let UIApplicationDidEnterBackgroundNotification: NSNotification.Name
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.willEnterForegroundNotification")
let UIApplicationWillEnterForegroundNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.didFinishLaunchingNotification")
let UIApplicationDidFinishLaunchingNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.didBecomeActiveNotification")
let UIApplicationDidBecomeActiveNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.willResignActiveNotification")
let UIApplicationWillResignActiveNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.didReceiveMemoryWarningNotification")
let UIApplicationDidReceiveMemoryWarningNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.willTerminateNotification")
let UIApplicationWillTerminateNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.significantTimeChangeNotification")
let UIApplicationSignificantTimeChangeNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.willChangeStatusBarOrientationNotification")
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
let UIApplicationWillChangeStatusBarOrientationNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.didChangeStatusBarOrientationNotification")
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
let UIApplicationDidChangeStatusBarOrientationNotification: NSNotification.Name
@available(swift, obsoleted: 4.2, renamed: "UIApplication.statusBarOrientationUserInfoKey")
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
let UIApplicationStatusBarOrientationUserInfoKey: String
@available(swift, obsoleted: 3, renamed: "UIApplication.willChangeStatusBarFrameNotification")
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
let UIApplicationWillChangeStatusBarFrameNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIApplication.didChangeStatusBarFrameNotification")
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
let UIApplicationDidChangeStatusBarFrameNotification: NSNotification.Name
@available(swift, obsoleted: 4.2, renamed: "UIApplication.statusBarFrameUserInfoKey")
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
let UIApplicationStatusBarFrameUserInfoKey: String
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.backgroundRefreshStatusDidChangeNotification")
let UIApplicationBackgroundRefreshStatusDidChangeNotification: NSNotification.Name
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.protectedDataWillBecomeUnavailableNotification")
let UIApplicationProtectedDataWillBecomeUnavailable: NSNotification.Name
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.protectedDataDidBecomeAvailableNotification")
let UIApplicationProtectedDataDidBecomeAvailable: NSNotification.Name
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.url")
let UIApplicationLaunchOptionsURLKey: UIApplication.LaunchOptionsKey
extension UIApplication.LaunchOptionsKey {
  @available(iOS 3.0, *)
  static let url: UIApplication.LaunchOptionsKey
  @available(iOS 3.0, *)
  static let sourceApplication: UIApplication.LaunchOptionsKey
  @available(iOS 3.0, *)
  static let remoteNotification: UIApplication.LaunchOptionsKey
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  static let localNotification: UIApplication.LaunchOptionsKey
  @available(iOS 3.2, *)
  static let annotation: UIApplication.LaunchOptionsKey
  @available(iOS 4.0, *)
  static let location: UIApplication.LaunchOptionsKey
  @available(iOS 5.0, *)
  static let newsstandDownloads: UIApplication.LaunchOptionsKey
  @available(iOS 7.0, *)
  static let bluetoothCentrals: UIApplication.LaunchOptionsKey
  @available(iOS 7.0, *)
  static let bluetoothPeripherals: UIApplication.LaunchOptionsKey
  @available(iOS 9.0, *)
  static let shortcutItem: UIApplication.LaunchOptionsKey
  @available(iOS 14.5, *)
  static let eventAttribution: UIApplication.LaunchOptionsKey
  @available(iOS 8.0, *)
  static let userActivityDictionary: UIApplication.LaunchOptionsKey
  @available(iOS 8.0, *)
  static let userActivityType: UIApplication.LaunchOptionsKey
  @available(iOS 10.0, *)
  static let cloudKitShareMetadata: UIApplication.LaunchOptionsKey
}
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.sourceApplication")
let UIApplicationLaunchOptionsSourceApplicationKey: UIApplication.LaunchOptionsKey
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.remoteNotification")
let UIApplicationLaunchOptionsRemoteNotificationKey: UIApplication.LaunchOptionsKey
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.localNotification")
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
let UIApplicationLaunchOptionsLocalNotificationKey: UIApplication.LaunchOptionsKey
@available(iOS 3.2, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.annotation")
let UIApplicationLaunchOptionsAnnotationKey: UIApplication.LaunchOptionsKey
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.location")
let UIApplicationLaunchOptionsLocationKey: UIApplication.LaunchOptionsKey
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.newsstandDownloads")
let UIApplicationLaunchOptionsNewsstandDownloadsKey: UIApplication.LaunchOptionsKey
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.bluetoothCentrals")
let UIApplicationLaunchOptionsBluetoothCentralsKey: UIApplication.LaunchOptionsKey
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.bluetoothPeripherals")
let UIApplicationLaunchOptionsBluetoothPeripheralsKey: UIApplication.LaunchOptionsKey
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.shortcutItem")
let UIApplicationLaunchOptionsShortcutItemKey: UIApplication.LaunchOptionsKey
@available(iOS 14.5, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.eventAttribution")
let UIApplicationLaunchOptionsEventAttributionKey: UIApplication.LaunchOptionsKey
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.userActivityDictionary")
let UIApplicationLaunchOptionsUserActivityDictionaryKey: UIApplication.LaunchOptionsKey
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.userActivityType")
let UIApplicationLaunchOptionsUserActivityTypeKey: UIApplication.LaunchOptionsKey
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.LaunchOptionsKey.cloudKitShareMetadata")
let UIApplicationLaunchOptionsCloudKitShareMetadataKey: UIApplication.LaunchOptionsKey
@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.openSettingsURLString")
let UIApplicationOpenSettingsURLString: String
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.OpenURLOptionsKey.sourceApplication")
let UIApplicationOpenURLOptionsSourceApplicationKey: UIApplication.OpenURLOptionsKey
extension UIApplication.OpenURLOptionsKey {
  @available(iOS 9.0, *)
  static let sourceApplication: UIApplication.OpenURLOptionsKey
  @available(iOS 9.0, *)
  static let annotation: UIApplication.OpenURLOptionsKey
  @available(iOS 9.0, *)
  static let openInPlace: UIApplication.OpenURLOptionsKey
  @available(iOS 14.5, *)
  static let eventAttribution: UIApplication.OpenURLOptionsKey
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.OpenURLOptionsKey.annotation")
let UIApplicationOpenURLOptionsAnnotationKey: UIApplication.OpenURLOptionsKey
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.OpenURLOptionsKey.openInPlace")
let UIApplicationOpenURLOptionsOpenInPlaceKey: UIApplication.OpenURLOptionsKey
@available(iOS 14.5, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.OpenURLOptionsKey.eventAttribution")
let UIApplicationOpenURLOptionsEventAttributionKey: UIApplication.OpenURLOptionsKey
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.userDidTakeScreenshotNotification")
let UIApplicationUserDidTakeScreenshotNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.ExtensionPointIdentifier.keyboard")
let UIApplicationKeyboardExtensionPointIdentifier: UIApplication.ExtensionPointIdentifier
extension UIApplication.ExtensionPointIdentifier {
  @available(iOS 8.0, *)
  static let keyboard: UIApplication.ExtensionPointIdentifier
}
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIApplicationOpenExternalURLOptionsKey.universalLinksOnly")
let UIApplicationOpenURLOptionUniversalLinksOnly: UIApplication.OpenExternalURLOptionsKey
extension UIApplication.OpenExternalURLOptionsKey {
  @available(iOS 10.0, *)
  static let universalLinksOnly: UIApplication.OpenExternalURLOptionsKey
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIApplicationOpenExternalURLOptionsKey.universalLinksOnly")
  static let UIApplicationOpenURLOptionUniversalLinksOnly: UIApplication.OpenExternalURLOptionsKey
  @available(iOS 14.5, *)
  static let eventAttribution: UIApplication.OpenExternalURLOptionsKey
}
@available(iOS 14.5, *)
@available(swift, obsoleted: 3, renamed: "UIApplication.OpenExternalURLOptionsKey.eventAttribution")
let UIApplicationOpenExternalURLOptionsEventAttributionKey: UIApplication.OpenExternalURLOptionsKey
