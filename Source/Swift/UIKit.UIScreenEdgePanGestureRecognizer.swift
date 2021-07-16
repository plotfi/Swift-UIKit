@_exported import Foundation


/** This subclass of UIPanGestureRecognizer only recognizes if the user slides their finger
    in from the bezel on the specified edge. */
@available(iOS 7.0, *)
class UIScreenEdgePanGestureRecognizer : UIPanGestureRecognizer {
  var edges: UIRectEdge
  init(target: Any?, action: Selector?)
  convenience init()
  convenience init?(coder: NSCoder)
}
