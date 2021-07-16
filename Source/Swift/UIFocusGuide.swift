@_exported import Foundation


/// UIFocusGuides are UILayoutGuide subclasses that participate in the focus system from within their owning view. A UIFocusGuide may be used to expose non-view areas as focusable.
@available(iOS 9.0, *)
class UIFocusGuide : UILayoutGuide {

  /// If disabled, UIFocusGuides are ignored by the focus engine, but still participate in layout. Modifying this flag allows you to conditionally enable or disable certain focus behaviors. YES by default.
  var isEnabled: Bool

  /// If disabled, UIFocusGuides are ignored by the focus engine, but still participate in layout. Modifying this flag allows you to conditionally enable or disable certain focus behaviors. YES by default.
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool

  /// Setting preferredFocusEnvironments to a non-empty array marks this guide's layoutFrame as focusable. If empty, this guide is effectively disabled.
  /// If focused, the guide attempts to redirect focus to each environment in the array, in order, stopping when a focusable item in an environment has been found.
  @available(iOS 10.0, *)
  var preferredFocusEnvironments: [UIFocusEnvironment]!

  /// Setting a preferred focused view marks this guide's layoutFrame as focusable, and if focused, redirects focus to its preferred focused view. If nil, this guide is effectively disabled.
  @available(iOS, introduced: 9.0, deprecated: 10.0)
  weak var preferredFocusedView: @sil_weak UIView?
  init()
  init?(coder: NSCoder)
}
