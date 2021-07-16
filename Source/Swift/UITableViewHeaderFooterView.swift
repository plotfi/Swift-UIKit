@_exported import Foundation

@available(iOS 6.0, *)
class UITableViewHeaderFooterView : UIView {
  init(reuseIdentifier: String?)
  init?(coder: NSCoder)

  /// Returns the current configuration state for the header/footer.
  /// To add your own custom state(s), override the getter and call super to obtain an instance with the
  /// system properties set, then set your own custom states as desired.
  @available(iOS 14.0, *)
  var __configurationState: __UIViewConfigurationState { get }

  /// Requests the view update its configuration for its current state. This method is called automatically
  /// when the view's `configurationState` may have changed, as well as in other circumstances where an
  /// update may be required. Multiple requests may be coalesced into a single update at the appropriate time.
  @available(iOS 14.0, *)
  func setNeedsUpdateConfiguration()

  /// Subclasses should override this method and update the view's configuration using the state provided.
  /// This method should not be called directly, use `setNeedsUpdateConfiguration` to request an update.
  @available(iOS 14.0, *)
  func __updateConfiguration(using state: __UIViewConfigurationState)

  /// Subclasses should override this method and update the view's configuration using the state provided.
  /// This method should not be called directly, use `setNeedsUpdateConfiguration` to request an update.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__updateConfiguration(using:)")
  func __updateConfigurationUsingState(_ state: __UIViewConfigurationState)

  /// Returns a default list content configuration for the header/footer view's style.
  @available(iOS 14.0, *)
  func __defaultContentConfiguration() -> __UIListContentConfiguration

  /// Setting a content configuration replaces the existing contentView of the header/footer with a new content view instance from the configuration,
  /// or directly applies the configuration to the existing content view if the configuration is compatible with the existing content view type.
  /// The default value is nil. After a configuration has been set, setting this property to nil will replace the current content view with a new content view.
  @available(iOS 14.0, *)
  @NSCopying var __contentConfiguration: __UIContentConfiguration?

  /// When YES, the header/footer will automatically call -updatedConfigurationForState: on its `contentConfiguration` when the header/footer's
  /// configuration state changes, and apply the updated configuration back to the header/footer. The default value is YES.
  @available(iOS 14.0, *)
  var automaticallyUpdatesContentConfiguration: Bool
  var contentView: UIView { get }
  @available(iOS, introduced: 6.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var textLabel: UILabel? { get }
  @available(iOS, introduced: 6.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var detailTextLabel: UILabel? { get }

  /// Setting a background configuration supersedes the header/footer's backgroundView. The default value is nil.
  @available(iOS 14.0, *)
  @NSCopying var __backgroundConfiguration: __UIBackgroundConfiguration?

  /// When YES, the header/footer will automatically call -updatedConfigurationForState: on its `backgroundConfiguration` when the header/footer's
  /// configuration state changes, and apply the updated configuration back to the header/footer. The default value is YES.
  @available(iOS 14.0, *)
  var automaticallyUpdatesBackgroundConfiguration: Bool
  var backgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  convenience init(frame: CGRect)
  convenience init()
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UIViewConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UIViewConfigurationState)
}
