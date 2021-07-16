@_exported import Foundation

@available(iOS 11.0, *)
protocol UIDragDropSession : NSObjectProtocol {
  var items: [UIDragItem] { get }
  func location(in view: UIView) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "location(in:)")
  func locationInView(_ view: UIView) -> CGPoint
  var allowsMoveOperation: Bool { get }
  var isRestrictedToDraggingApplication: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isRestrictedToDraggingApplication")
  var restrictedToDraggingApplication: Bool { get }
  func hasItemsConforming(toTypeIdentifiers typeIdentifiers: [String]) -> Bool
  @available(swift, obsoleted: 3, renamed: "hasItemsConforming(toTypeIdentifiers:)")
  func hasItemsConformingToTypeIdentifiers(_ typeIdentifiers: [String]) -> Bool
  func canLoadObjects(ofClass aClass: NSItemProviderReading.Type) -> Bool
  @available(swift, obsoleted: 3, renamed: "canLoadObjects(ofClass:)")
  func canLoadObjectsOfClass(_ aClass: NSItemProviderReading.Type) -> Bool
}

@available(iOS 11.0, *)
extension UIDragDropSession {
  @available(iOS 11.0, *)
  func canLoadObjects<T>(ofClass: T.Type) -> Bool where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}
@available(iOS 11.0, *)
protocol UIDragSession : UIDragDropSession {
  var localContext: Any? { get set }
}
@available(iOS 11.0, *)
enum UIDropSessionProgressIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIDropSessionProgressIndicatorStyle { get }
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIDropSessionProgressIndicatorStyle { get }
}
@available(iOS 11.0, *)
protocol UIDropSession : ProgressReporting, UIDragDropSession {
  var localDragSession: UIDragSession? { get }
  var progressIndicatorStyle: UIDropSessionProgressIndicatorStyle { get set }
  func loadObjects(ofClass aClass: NSItemProviderReading.Type, completion: @escaping ([NSItemProviderReading]) -> Void) -> Progress
  @available(swift, obsoleted: 3, renamed: "loadObjects(ofClass:completion:)")
  func loadObjectsOfClass(_ aClass: NSItemProviderReading.Type, completion: @escaping ([NSItemProviderReading]) -> Void) -> Progress
}

@available(iOS 11.0, *)
extension UIDropSession {
  @available(iOS 11.0, *)
  func loadObjects<T>(ofClass: T.Type, completion: @escaping ([T]) -> Void) -> Progress where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}
