@_exported import Foundation

protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(iOS 9.0, *)
  static func appearance(whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "appearance(whenContainedInInstancesOf:)")
  static func appearanceWhenContainedInInstancesOfClasses(_ containerTypes: [UIAppearanceContainer.Type]) -> Self
  @available(iOS 8.0, *)
  static func appearance(for trait: UITraitCollection) -> Self
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "appearance(for:)")
  static func appearanceForTraitCollection(_ trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  static func appearance(for trait: UITraitCollection, whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "appearance(for:whenContainedInInstancesOf:)")
  static func appearanceForTraitCollection(_ trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [UIAppearanceContainer.Type]) -> Self
}
