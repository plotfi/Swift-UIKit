@_exported import Foundation

@available(iOS 14.0, *)
class __UIListContentConfiguration : NSObject, __UIContentConfiguration, NSSecureCoding {

  /// Returns the default configuration for a list cell.
  class func cell() -> Self

  /// Returns the default configuration for a list cell.
  @available(swift, obsoleted: 3, renamed: "cell()")
  class func cellConfiguration() -> Self

  /// Returns the default configuration for a list cell with subtitle text.
  class func subtitleCell() -> Self

  /// Returns the default configuration for a list cell with subtitle text.
  @available(swift, obsoleted: 3, renamed: "subtitleCell()")
  class func subtitleCellConfiguration() -> Self

  /// Returns the default configuration for a list cell with side-by-side value text.
  class func valueCell() -> Self

  /// Returns the default configuration for a list cell with side-by-side value text.
  @available(swift, obsoleted: 3, renamed: "valueCell()")
  class func valueCellConfiguration() -> Self

  /// Returns the default configuration for a plain list header.
  class func plainHeader() -> Self

  /// Returns the default configuration for a plain list header.
  @available(swift, obsoleted: 3, renamed: "plainHeader()")
  class func plainHeaderConfiguration() -> Self

  /// Returns the default configuration for a plain list footer.
  class func plainFooter() -> Self

  /// Returns the default configuration for a plain list footer.
  @available(swift, obsoleted: 3, renamed: "plainFooter()")
  class func plainFooterConfiguration() -> Self

  /// Returns the default configuration for a grouped list header.
  class func groupedHeader() -> Self

  /// Returns the default configuration for a grouped list header.
  @available(swift, obsoleted: 3, renamed: "groupedHeader()")
  class func groupedHeaderConfiguration() -> Self

  /// Returns the default configuration for a grouped list footer.
  class func groupedFooter() -> Self

  /// Returns the default configuration for a grouped list footer.
  @available(swift, obsoleted: 3, renamed: "groupedFooter()")
  class func groupedFooterConfiguration() -> Self

  /// Returns the default configuration for a sidebar list cell.
  class func sidebarCell() -> Self

  /// Returns the default configuration for a sidebar list cell.
  @available(swift, obsoleted: 3, renamed: "sidebarCell()")
  class func sidebarCellConfiguration() -> Self

  /// Returns the default configuration for a sidebar list cell with subtitle text.
  class func sidebarSubtitleCell() -> Self

  /// Returns the default configuration for a sidebar list cell with subtitle text.
  @available(swift, obsoleted: 3, renamed: "sidebarSubtitleCell()")
  class func sidebarSubtitleCellConfiguration() -> Self

  /// Returns the default configuration for an accompanied sidebar list cell.
  class func accompaniedSidebarCell() -> Self

  /// Returns the default configuration for an accompanied sidebar list cell.
  @available(swift, obsoleted: 3, renamed: "accompaniedSidebarCell()")
  class func accompaniedSidebarCellConfiguration() -> Self

  /// Returns the default configuration for an accompanied sidebar list cell with subtitle text.
  class func accompaniedSidebarSubtitleCell() -> Self

  /// Returns the default configuration for an accompanied sidebar list cell with subtitle text.
  @available(swift, obsoleted: 3, renamed: "accompaniedSidebarSubtitleCell()")
  class func accompaniedSidebarSubtitleCellConfiguration() -> Self

  /// Returns the default configuration for a sidebar list header.
  class func sidebarHeader() -> Self

  /// Returns the default configuration for a sidebar list header.
  @available(swift, obsoleted: 3, renamed: "sidebarHeader()")
  class func sidebarHeaderConfiguration() -> Self
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  init()

  /// The image to display.
  var image: UIImage?

  /// Additional properties to configure the image.
  var imageProperties: __UIListContentImageProperties { get }

  /// The primary text.
  var text: String?

  /// An attributed variant of the primary text, which supersedes the `text` and some properties of the `textConfiguration` if set.
  @NSCopying var attributedText: NSAttributedString?

  /// Additional properties to configure the primary text.
  var textProperties: __UIListContentTextProperties { get }

  /// The secondary text.
  var secondaryText: String?

  /// An attributed variant of the secondary text, which supersedes the `secondaryText` and some properties of the `secondaryTextConfiguration` if set.
  @NSCopying var secondaryAttributedText: NSAttributedString?

  /// Additional properties to configure the secondary text.
  var secondaryTextProperties: __UIListContentTextProperties { get }

  /// Whether the content view will preserve inherited layout margins from its superview on the horizontal and/or vertical axes.
  var axesPreservingSuperviewLayoutMargins: UIAxis

  /// The margins for the content to the edges of the content view. (When preserving superview layout margins on one or both axes, these are just minimum margins, as inherited margins may be larger.)
  var directionalLayoutMargins: NSDirectionalEdgeInsets

  /// When YES, the text and secondary text will be positioned side-by-side if there is sufficient space. Otherwise, the text will be stacked in a vertical layout.
  var prefersSideBySideTextAndSecondaryText: Bool

  /// Padding between the image and text. Only applies when there is both an image and text.
  var imageToTextPadding: CGFloat

  /// Horizontal (minimum) padding between the text and secondary text. Only applies when there is both text and secondary text, and they are in a side-by-side layout.
  var textToSecondaryTextHorizontalPadding: CGFloat

  /// Vertical padding between the text and secondary text. Only applies when there is both text and secondary text, and they are in a stacked layout.
  var textToSecondaryTextVerticalPadding: CGFloat
  @available(iOS 14.0, *)
  class var supportsSecureCoding: Bool { get }

  /// Initializes and returns a new instance of the content view using this configuration.
  @available(iOS 14.0, *)
  func makeContentView() -> UIView & __UIContentView

  /// Returns a copy of the configuration updated for the specified state, by applying the configuration's default values for that state to any properties that have not been customized.
  @available(iOS 14.0, *)
  func updatedConfiguration(for state: __UIConfigurationState) -> Self
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 14.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
@available(iOS 14.0, *)
class UIListContentView : UIView, __UIContentView {
  init(__configuration configuration: __UIListContentConfiguration)
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init(frame: CGRect)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  @NSCopying var __configuration: __UIListContentConfiguration

  /// This guide reflects the positioning of the primary text rendered by this content view, if specified by the configuration.
  ///
  /// Returns nil if there is no primary text. If a new configuration is applied that does not contain primary text, then this layout
  /// guide is removed from the view, and any constraints associated with it will be deactivated.
  var textLayoutGuide: UILayoutGuide? { get }

  /// This guide reflects the positioning of the secondary text rendered by this content view, if specified by the configuration.
  ///
  /// Returns nil if there is no secondary text. If a new configuration is applied that does not contain secondary text, then this layout
  /// guide is removed from the view, and any constraints associated with it will be deactivated.
  var secondaryTextLayoutGuide: UILayoutGuide? { get }

  /// This guide reflects the positioning of the image rendered by this content view, if specified by the configuration.
  /// 
  /// Returns nil if there is no image. If a new configuration is applied that does contain an image, then this layout
  /// guide is removed from the view, and any constraints associated with it will be deactivated.
  var imageLayoutGuide: UILayoutGuide? { get }
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIListContentView : UIContentView {
  @available(iOS 14.0, tvOS 14.0, *)
  var configuration: UIContentConfiguration
  @available(iOS 14.0, tvOS 14.0, *)
  convenience init(configuration: UIListContentConfiguration)
}
