@_exported import Foundation

@available(iOS 14.0, *)
class __UIListContentImageProperties : NSObject, NSCopying, NSSecureCoding {

  /// The symbol configuration to use.
  @NSCopying var preferredSymbolConfiguration: UIImage.SymbolConfiguration?

  /// The tintColor to apply to the image view. Nil will use the image view's normal inherited tintColor.
  var tintColor: UIColor?

  /// Optional color transformer that is used to resolve the tint color. A nil value means the `tintColor` is used as-is.
  var tintColorTransformer: __UIConfigurationColorTransformer?

  /// Returns the resolved image tint color for the specified tint color of the view, based on the `tintColor` and `tintColorTransformer`.
  func resolvedTintColor(forTintColor tintColor: UIColor) -> UIColor

  /// Returns the resolved image tint color for the specified tint color of the view, based on the `tintColor` and `tintColorTransformer`.
  @available(swift, obsoleted: 3, renamed: "resolvedTintColor(forTintColor:)")
  func resolvedTintColorForTintColor(_ tintColor: UIColor) -> UIColor

  /// The preferred corner radius (using a continuous corner curve) for the image.
  /// Default is 0. If the image is too small to fit the requested radius, the corner curve
  /// and radius will be adjusted to fit.
  var cornerRadius: CGFloat

  /// Enforces a maximum size for the image. The default value is CGSizeZero. A zero width or
  /// height means the size is unconstrained on that dimension. If the image exceeds this size
  /// on either dimension, its size will be reduced proportionately (maintaining aspect ratio).
  var maximumSize: CGSize

  /// The layout size that is reserved for the image, inside which the image will be centered.
  /// The default value is CGSizeZero. The reservedLayoutSize width & height only affect the
  /// space reserved for the image and its positioning; they do not affect the image's size.
  /// A zero width or height means the default behavior is used for that dimension:
  ///     * Symbol images will be centered inside a standard width/height that is scaled
  ///       with the content size category.
  ///     * Non-symbol images will use a reservedLayoutSize equal to the actual size of the
  ///       displayed image.
  /// Use the UIListContentImageStandardDimension constant for the width and/or height to force
  /// the standard symbol image value to be used for that dimension, regardless of the image.
  /// This property is used to horizontally align images across adjacent content views (even
  /// when the actual image widths may vary slightly), and/or to ensure a consistent height is
  /// reserved for different images across different content views (so that the content view
  /// heights are consistent even when the actual image heights may vary slightly). The
  /// reservedLayoutSize.width is ignored by content views at Accessibility Dynamic Type
  /// sizes, and the reservedLayoutSize.height is ignored when using the special Accessibility
  /// Dynamic Type layout where text wraps around the image.
  var reservedLayoutSize: CGSize

  /// Prevents the image from inverting its colors when the accessibility setting is enabled.
  var accessibilityIgnoresInvertColors: Bool
  init()
  @available(iOS 14.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 14.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}

/// A special constant that can be set to the `reservedLayoutSize` width or height. This
/// forces the system standard value that a symbol image would use for that dimension,
/// even when the image is not a symbol image.
@available(iOS 14.0, *)
let __UIListContentImageStandardDimension: CGFloat
