@_exported import Foundation

@available(iOS 14.0, *)
protocol __UIContentConfiguration : NSCopying, NSObjectProtocol {

  /// Initializes and returns a new instance of the content view using this configuration.
  func makeContentView() -> UIView & __UIContentView

  /// Returns a copy of the configuration updated for the specified state, by applying the configuration's default values for that state to any properties that have not been customized.
  func updatedConfiguration(for state: __UIConfigurationState) -> Self

  /// Returns a copy of the configuration updated for the specified state, by applying the configuration's default values for that state to any properties that have not been customized.
  @available(swift, obsoleted: 3, renamed: "updatedConfiguration(for:)")
  func updatedConfigurationForState(_ state: __UIConfigurationState) -> Self
}
@available(iOS 14.0, *)
protocol __UIContentView : NSObjectProtocol {

  /// Returns the current configuration of the view. Setting this property applies the new configuration to the view.
  @NSCopying var __configuration: __UIContentConfiguration { get set }
}
