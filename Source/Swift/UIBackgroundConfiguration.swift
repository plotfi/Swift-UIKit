@_exported import Foundation

@available(iOS 14.0, *)
class __UIBackgroundConfiguration : NSObject, NSCopying, NSSecureCoding {

  /// Returns a clear configuration, with no default styling.
  class func clear() -> Self

  /// Returns a clear configuration, with no default styling.
  @available(swift, obsoleted: 3, renamed: "clear()")
  class func clearConfiguration() -> Self

  /// Returns the default configuration for a plain list cell.
  class func listPlainCell() -> Self

  /// Returns the default configuration for a plain list cell.
  @available(swift, obsoleted: 3, renamed: "listPlainCell()")
  class func listPlainCellConfiguration() -> Self

  /// Returns the default configuration for a plain list header or footer.
  class func listPlainHeaderFooter() -> Self

  /// Returns the default configuration for a plain list header or footer.
  @available(swift, obsoleted: 3, renamed: "listPlainHeaderFooter()")
  class func listPlainHeaderFooterConfiguration() -> Self

  /// Returns the default configuration for a grouped list cell.
  class func listGroupedCell() -> Self

  /// Returns the default configuration for a grouped list cell.
  @available(swift, obsoleted: 3, renamed: "listGroupedCell()")
  class func listGroupedCellConfiguration() -> Self

  /// Returns the default configuration for a grouped list header or footer.
  class func listGroupedHeaderFooter() -> Self

  /// Returns the default configuration for a grouped list header or footer.
  @available(swift, obsoleted: 3, renamed: "listGroupedHeaderFooter()")
  class func listGroupedHeaderFooterConfiguration() -> Self

  /// Returns the default configuration for a sidebar list header.
  class func listSidebarHeader() -> Self

  /// Returns the default configuration for a sidebar list header.
  @available(swift, obsoleted: 3, renamed: "listSidebarHeader()")
  class func listSidebarHeaderConfiguration() -> Self

  /// Returns the default configuration for a sidebar list cell.
  class func listSidebarCell() -> Self

  /// Returns the default configuration for a sidebar list cell.
  @available(swift, obsoleted: 3, renamed: "listSidebarCell()")
  class func listSidebarCellConfiguration() -> Self

  /// Returns the default configuration for an accompanied sidebar list cell.
  class func listAccompaniedSidebarCell() -> Self

  /// Returns the default configuration for an accompanied sidebar list cell.
  @available(swift, obsoleted: 3, renamed: "listAccompaniedSidebarCell()")
  class func listAccompaniedSidebarCellConfiguration() -> Self
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  init()

  /// Returns a copy of the configuration updated for the specified state, by applying the configuration's default values for that state to any properties that have not been customized.
  func updatedConfiguration(for state: __UIConfigurationState) -> Self

  /// Returns a copy of the configuration updated for the specified state, by applying the configuration's default values for that state to any properties that have not been customized.
  @available(swift, obsoleted: 3, renamed: "updatedConfiguration(for:)")
  func updatedConfigurationForState(_ state: __UIConfigurationState) -> Self

  /// A custom view for the background. The custom view must have translatesAutoresizingMaskIntoConstraints
  /// enabled, but may use auto layout constraints internally for layout of subviews.
  var customView: UIView?

  /// The preferred corner radius (using a continuous corner curve) for the background and stroke. This is also applied to the custom view. Default is 0.
  /// If the view is too small to fit the requested radius, the corner curve and radius will be adjusted to fit.
  var cornerRadius: CGFloat

  /// Insets (or outsets, if negative) for the background and stroke, relative to the edges of the containing view. These also apply to the custom view. Default is NSDirectionalEdgeInsetsZero.
  var backgroundInsets: NSDirectionalEdgeInsets

  /// The edges on which the containing view's layout margins are added to the `backgroundInsets`, effectively making the `backgroundInsets` values relative
  /// to the containing view's layout margins for these edges. Default is NSDirectionalRectEdgeNone.
  var edgesAddingLayoutMarginsToBackgroundInsets: NSDirectionalRectEdge

  /// Configures the color of the background. A nil value uses the view's tint color; use `clearColor` for no color (transparent).
  var backgroundColor: UIColor?

  /// Optional color transformer that is used to resolve the background color. A nil value means the `backgroundColor` is used as-is.
  var backgroundColorTransformer: __UIConfigurationColorTransformer?

  /// Returns the resolved background color for the specified tint color, based on the `backgroundColor` and `backgroundColorTransformer`.
  func resolvedBackgroundColor(forTintColor tintColor: UIColor) -> UIColor

  /// Returns the resolved background color for the specified tint color, based on the `backgroundColor` and `backgroundColorTransformer`.
  @available(swift, obsoleted: 3, renamed: "resolvedBackgroundColor(forTintColor:)")
  func resolvedBackgroundColorForTintColor(_ tintColor: UIColor) -> UIColor

  /// The visual effect to apply to the background. Default is nil.
  @NSCopying var visualEffect: UIVisualEffect?

  /// Configures the color of the stroke. A nil value uses the view's tint color; use `clearColor` for no color (transparent).
  var strokeColor: UIColor?

  /// Optional color transformer that is used to resolve the stroke color. A nil value means the `strokeColor` is used as-is.
  var strokeColorTransformer: __UIConfigurationColorTransformer?

  /// Returns the resolved stroke color for the specified tint color, based on the `strokeColor` and `strokeColorTransformer`.
  func resolvedStrokeColor(forTintColor tintColor: UIColor) -> UIColor

  /// Returns the resolved stroke color for the specified tint color, based on the `strokeColor` and `strokeColorTransformer`.
  @available(swift, obsoleted: 3, renamed: "resolvedStrokeColor(forTintColor:)")
  func resolvedStrokeColorForTintColor(_ tintColor: UIColor) -> UIColor

  /// The width of the stroke. Default is 0.
  var strokeWidth: CGFloat

  /// Outset (or inset, if negative) for the stroke, relative to the background (including any backgroundInsets). Default is 0.
  /// The corner radius of the stroke is adjusted for any outset to remain concentric with the background.
  var strokeOutset: CGFloat
  @available(iOS 14.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 14.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
