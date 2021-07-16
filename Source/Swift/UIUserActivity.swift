@_exported import Foundation

@available(iOS 8.0, *)
protocol UIUserActivityRestoring : NSObjectProtocol {
  func restoreUserActivityState(_ userActivity: NSUserActivity)
}
