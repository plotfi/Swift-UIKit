@_exported import Foundation

@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICloudSharingController.PermissionOptions")
typealias UICloudSharingPermissionOptions = UICloudSharingController.PermissionOptions
extension UICloudSharingController {
  @available(iOS 10.0, *)
  struct PermissionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UICloudSharingController.PermissionOptions
    typealias ArrayLiteralElement = UICloudSharingController.PermissionOptions
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var standard: UICloudSharingController.PermissionOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "standard")
    static var Standard: UICloudSharingController.PermissionOptions { get }
    static var allowPublic: UICloudSharingController.PermissionOptions { get }
    @available(swift, obsoleted: 3, renamed: "allowPublic")
    static var AllowPublic: UICloudSharingController.PermissionOptions { get }
    static var allowPrivate: UICloudSharingController.PermissionOptions { get }
    @available(swift, obsoleted: 3, renamed: "allowPrivate")
    static var AllowPrivate: UICloudSharingController.PermissionOptions { get }
    static var allowReadOnly: UICloudSharingController.PermissionOptions { get }
    @available(swift, obsoleted: 3, renamed: "allowReadOnly")
    static var AllowReadOnly: UICloudSharingController.PermissionOptions { get }
    static var allowReadWrite: UICloudSharingController.PermissionOptions { get }
    @available(swift, obsoleted: 3, renamed: "allowReadWrite")
    static var AllowReadWrite: UICloudSharingController.PermissionOptions { get }
  }
}
protocol UICloudSharingControllerDelegate : NSObjectProtocol {
  @available(iOS 10.0, *)
  func cloudSharingController(_ csc: UICloudSharingController, failedToSaveShareWithError error: Error)
  @available(iOS 10.0, *)
  func itemTitle(for csc: UICloudSharingController) -> String?
  @available(swift, obsoleted: 3, renamed: "itemTitle(for:)")
  func itemTitleForCloudSharingController(_ csc: UICloudSharingController) -> String?
  @available(iOS 10.0, *)
  optional func itemThumbnailData(for csc: UICloudSharingController) -> Data?
  @available(swift, obsoleted: 3, renamed: "itemThumbnailData(for:)")
  optional func itemThumbnailDataForCloudSharingController(_ csc: UICloudSharingController) -> Data?
  @available(iOS 10.0, *)
  optional func itemType(for csc: UICloudSharingController) -> String?
  @available(swift, obsoleted: 3, renamed: "itemType(for:)")
  optional func itemTypeForCloudSharingController(_ csc: UICloudSharingController) -> String?
  @available(iOS 10.0, *)
  optional func cloudSharingControllerDidSaveShare(_ csc: UICloudSharingController)
  @available(iOS 10.0, *)
  optional func cloudSharingControllerDidStopSharing(_ csc: UICloudSharingController)
}
@available(iOS 10.0, *)
class UICloudSharingController : UIViewController {
  @available(*, unavailable)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  @available(*, unavailable)
  init?(coder: NSCoder)
  weak var delegate: @sil_weak UICloudSharingControllerDelegate?
  var availablePermissions: UICloudSharingController.PermissionOptions
  func activityItemSource() -> UIActivityItemSource
  convenience init()
}
