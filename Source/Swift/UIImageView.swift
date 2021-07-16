@_exported import Foundation

@available(iOS 2.0, *)
class UIImageView : UIView {
  init(image: UIImage?)
  @available(iOS 3.0, *)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  @available(iOS 3.0, *)
  var highlightedImage: UIImage?
  @available(iOS 13.0, *)
  var preferredSymbolConfiguration: UIImage.SymbolConfiguration?
  var isUserInteractionEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isUserInteractionEnabled")
  var userInteractionEnabled: Bool
  @available(iOS 3.0, *)
  var isHighlighted: Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isHighlighted")
  var highlighted: Bool
  var animationImages: [UIImage]?
  @available(iOS 3.0, *)
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: TimeInterval
  var animationRepeatCount: Int
  @available(iOS 7.0, *)
  var tintColor: UIColor!
  func startAnimating()
  func stopAnimating()
  var isAnimating: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isAnimating")
  var animating: Bool { get }
  @available(iOS, unavailable)
  var adjustsImageWhenAncestorFocused: Bool
  @available(iOS, unavailable)
  var focusedFrameGuide: UILayoutGuide { get }
  @available(iOS, unavailable)
  var overlayContentView: UIView { get }
  @available(iOS, unavailable)
  var masksFocusEffectToContents: Bool
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
}
