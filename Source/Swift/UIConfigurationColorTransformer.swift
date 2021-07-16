@_exported import Foundation


/// A color transformer returns a modified output color based on an input color.
@available(iOS 14.0, *)
typealias __UIConfigurationColorTransformer = (UIColor) -> UIColor

/// A color transformer that returns a grayscale version of the color.
@available(iOS 14.0, *)
let __UIConfigurationColorTransformerGrayscale: @convention(block) (UIColor) -> UIColor

/// A color transformer that either passes the original color through, or replaces it with the system accent color.
/// - When the system accent color is set to Multicolor: Returns the original color.
/// - When the system accent color is configured to any other color:  Returns that color.
/// - On platforms without a system accent color: Returns the original color.
@available(iOS 14.0, *)
let __UIConfigurationColorTransformerPreferredTint: @convention(block) (UIColor) -> UIColor

/// A color transformer that gives the color a monochrome tint. Use this to deemphasize the tinted item.
/// It remains monochrome regardless of the system accent color (if the platform has one).
@available(iOS 14.0, *)
let __UIConfigurationColorTransformerMonochromeTint: @convention(block) (UIColor) -> UIColor
