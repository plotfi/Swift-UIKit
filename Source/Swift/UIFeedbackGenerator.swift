@_exported import Foundation

@available(iOS 10.0, *)
class UIFeedbackGenerator : NSObject {

  /// informs self that it will likely receive events soon, so that it can ensure minimal latency for any feedback generated
  /// safe to call more than once before the generator receives an event, if events are still imminently possible
  func prepare()
  init()
}
