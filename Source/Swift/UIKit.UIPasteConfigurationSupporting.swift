@_exported import Foundation

@available(iOS 11.0, *)
protocol UIPasteConfigurationSupporting : NSObjectProtocol {
  @NSCopying var pasteConfiguration: UIPasteConfiguration? { get set }
  optional func paste(itemProviders: [NSItemProvider])
  @available(swift, obsoleted: 3, renamed: "paste(itemProviders:)")
  optional func pasteItemProviders(_ itemProviders: [NSItemProvider])
  optional func canPaste(_ itemProviders: [NSItemProvider]) -> Bool
  @available(swift, obsoleted: 3, renamed: "canPaste(_:)")
  optional func canPasteItemProviders(_ itemProviders: [NSItemProvider]) -> Bool
}
