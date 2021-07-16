@_exported import Foundation

@available(iOS 3.1, *)
class UIVideoEditorController : UINavigationController {
  @available(iOS 3.1, *)
  class func canEditVideo(atPath videoPath: String) -> Bool
  @available(iOS 3.1, *)
  @available(swift, obsoleted: 3, renamed: "canEditVideo(atPath:)")
  class func canEditVideoAtPath(_ videoPath: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged (UINavigationControllerDelegate & UIVideoEditorControllerDelegate)?
  var videoPath: String
  var videoMaximumDuration: TimeInterval
  var videoQuality: UIImagePickerController.QualityType
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIVideoEditorControllerDelegate : NSObjectProtocol {
  @available(iOS 3.1, *)
  optional func videoEditorController(_ editor: UIVideoEditorController, didSaveEditedVideoToPath editedVideoPath: String)
  @available(iOS 3.1, *)
  optional func videoEditorController(_ editor: UIVideoEditorController, didFailWithError error: Error)
  @available(iOS 3.1, *)
  optional func videoEditorControllerDidCancel(_ editor: UIVideoEditorController)
}
