@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIImagePickerController.SourceType")
typealias UIImagePickerControllerSourceType = UIImagePickerController.SourceType
extension UIImagePickerController {
  enum SourceType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    @available(iOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    case photoLibrary
    @available(iOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    @available(swift, obsoleted: 3, renamed: "photoLibrary")
    static var PhotoLibrary: UIImagePickerController.SourceType { get }
    case camera
    @available(swift, obsoleted: 3, renamed: "camera")
    static var Camera: UIImagePickerController.SourceType { get }
    @available(iOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    case savedPhotosAlbum
    @available(iOS, introduced: 2, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
    @available(swift, obsoleted: 3, renamed: "savedPhotosAlbum")
    static var SavedPhotosAlbum: UIImagePickerController.SourceType { get }
  }
  enum QualityType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case typeHigh
    @available(swift, obsoleted: 3, renamed: "typeHigh")
    static var TypeHigh: UIImagePickerController.QualityType { get }
    case typeMedium
    @available(swift, obsoleted: 3, renamed: "typeMedium")
    static var TypeMedium: UIImagePickerController.QualityType { get }
    case typeLow
    @available(swift, obsoleted: 3, renamed: "typeLow")
    static var TypeLow: UIImagePickerController.QualityType { get }
    @available(iOS 4.0, *)
    case type640x480
    @available(iOS 4.0, *)
    @available(swift, obsoleted: 3, renamed: "type640x480")
    static var Type640x480: UIImagePickerController.QualityType { get }
    @available(iOS 5.0, *)
    case typeIFrame1280x720
    @available(iOS 5.0, *)
    @available(swift, obsoleted: 3, renamed: "typeIFrame1280x720")
    static var TypeIFrame1280x720: UIImagePickerController.QualityType { get }
    @available(iOS 5.0, *)
    case typeIFrame960x540
    @available(iOS 5.0, *)
    @available(swift, obsoleted: 3, renamed: "typeIFrame960x540")
    static var TypeIFrame960x540: UIImagePickerController.QualityType { get }
  }
  enum CameraCaptureMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case photo
    @available(swift, obsoleted: 3, renamed: "photo")
    static var Photo: UIImagePickerController.CameraCaptureMode { get }
    case video
    @available(swift, obsoleted: 3, renamed: "video")
    static var Video: UIImagePickerController.CameraCaptureMode { get }
  }
  enum CameraDevice : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case rear
    @available(swift, obsoleted: 3, renamed: "rear")
    static var Rear: UIImagePickerController.CameraDevice { get }
    case front
    @available(swift, obsoleted: 3, renamed: "front")
    static var Front: UIImagePickerController.CameraDevice { get }
  }
  enum CameraFlashMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case off
    @available(swift, obsoleted: 3, renamed: "off")
    static var Off: UIImagePickerController.CameraFlashMode { get }
    case auto
    @available(swift, obsoleted: 3, renamed: "auto")
    static var Auto: UIImagePickerController.CameraFlashMode { get }
    case on
    @available(swift, obsoleted: 3, renamed: "on")
    static var On: UIImagePickerController.CameraFlashMode { get }
  }
  @available(iOS, introduced: 11, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  enum ImageURLExportPreset : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case compatible
    @available(swift, obsoleted: 3, renamed: "compatible")
    static var Compatible: UIImagePickerController.ImageURLExportPreset { get }
    case current
    @available(swift, obsoleted: 3, renamed: "current")
    static var Current: UIImagePickerController.ImageURLExportPreset { get }
  }
  struct InfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIImagePickerController.QualityType")
typealias UIImagePickerControllerQualityType = UIImagePickerController.QualityType
@available(swift, obsoleted: 4.2, renamed: "UIImagePickerController.CameraCaptureMode")
typealias UIImagePickerControllerCameraCaptureMode = UIImagePickerController.CameraCaptureMode
@available(swift, obsoleted: 4.2, renamed: "UIImagePickerController.CameraDevice")
typealias UIImagePickerControllerCameraDevice = UIImagePickerController.CameraDevice
@available(swift, obsoleted: 4.2, renamed: "UIImagePickerController.CameraFlashMode")
typealias UIImagePickerControllerCameraFlashMode = UIImagePickerController.CameraFlashMode
@available(swift, obsoleted: 4.2, renamed: "UIImagePickerController.ImageURLExportPreset")
@available(iOS, introduced: 11, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
typealias UIImagePickerControllerImageURLExportPreset = UIImagePickerController.ImageURLExportPreset
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey")
typealias UIImagePickerControllerInfoKey = UIImagePickerController.InfoKey
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.mediaType")
let UIImagePickerControllerMediaType: UIImagePickerController.InfoKey
extension UIImagePickerController.InfoKey {
  static let mediaType: UIImagePickerController.InfoKey
  static let originalImage: UIImagePickerController.InfoKey
  static let editedImage: UIImagePickerController.InfoKey
  static let cropRect: UIImagePickerController.InfoKey
  static let mediaURL: UIImagePickerController.InfoKey
  @available(iOS, introduced: 4.1, deprecated: 11.0, message: "Will be removed in a future release, use PHPicker.")
  static let referenceURL: UIImagePickerController.InfoKey
  @available(iOS 4.1, *)
  static let mediaMetadata: UIImagePickerController.InfoKey
  @available(iOS 9.1, *)
  static let livePhoto: UIImagePickerController.InfoKey
  @available(iOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  static let phAsset: UIImagePickerController.InfoKey
  @available(iOS 11.0, *)
  static let imageURL: UIImagePickerController.InfoKey
}
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.originalImage")
let UIImagePickerControllerOriginalImage: UIImagePickerController.InfoKey
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.editedImage")
let UIImagePickerControllerEditedImage: UIImagePickerController.InfoKey
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.cropRect")
let UIImagePickerControllerCropRect: UIImagePickerController.InfoKey
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.mediaURL")
let UIImagePickerControllerMediaURL: UIImagePickerController.InfoKey
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.referenceURL")
@available(iOS, introduced: 4.1, deprecated: 11.0, message: "Will be removed in a future release, use PHPicker.")
let UIImagePickerControllerReferenceURL: UIImagePickerController.InfoKey
@available(iOS 4.1, *)
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.mediaMetadata")
let UIImagePickerControllerMediaMetadata: UIImagePickerController.InfoKey
@available(iOS 9.1, *)
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.livePhoto")
let UIImagePickerControllerLivePhoto: UIImagePickerController.InfoKey
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.phAsset")
@available(iOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
let UIImagePickerControllerPHAsset: UIImagePickerController.InfoKey
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIImagePickerController.InfoKey.imageURL")
let UIImagePickerControllerImageURL: UIImagePickerController.InfoKey
@available(iOS 2.0, *)
class UIImagePickerController : UINavigationController, NSCoding {
  class func isSourceTypeAvailable(_ sourceType: UIImagePickerController.SourceType) -> Bool
  class func availableMediaTypes(for sourceType: UIImagePickerController.SourceType) -> [String]?
  @available(swift, obsoleted: 3, renamed: "availableMediaTypes(for:)")
  class func availableMediaTypesForSourceType(_ sourceType: UIImagePickerController.SourceType) -> [String]?
  @available(iOS 4.0, *)
  class func isCameraDeviceAvailable(_ cameraDevice: UIImagePickerController.CameraDevice) -> Bool
  @available(iOS 4.0, *)
  class func isFlashAvailable(for cameraDevice: UIImagePickerController.CameraDevice) -> Bool
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "isFlashAvailable(for:)")
  class func isFlashAvailableForCameraDevice(_ cameraDevice: UIImagePickerController.CameraDevice) -> Bool
  @available(iOS 4.0, *)
  class func availableCaptureModes(for cameraDevice: UIImagePickerController.CameraDevice) -> [NSNumber]?
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "availableCaptureModes(for:)")
  class func availableCaptureModesForCameraDevice(_ cameraDevice: UIImagePickerController.CameraDevice) -> [NSNumber]?
  weak var delegate: @sil_weak (UIImagePickerControllerDelegate & UINavigationControllerDelegate)?
  var sourceType: UIImagePickerController.SourceType
  var mediaTypes: [String]
  @available(iOS 3.1, *)
  var allowsEditing: Bool
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.1, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var allowsImageEditing: Bool
  @available(iOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  var imageExportPreset: UIImagePickerController.ImageURLExportPreset
  @available(iOS 3.1, *)
  var videoMaximumDuration: TimeInterval
  @available(iOS 3.1, *)
  var videoQuality: UIImagePickerController.QualityType
  @available(iOS, introduced: 11.0, deprecated: 100000, message: "Will be removed in a future release, use PHPicker.")
  var videoExportPreset: String
  @available(iOS 3.1, *)
  var showsCameraControls: Bool
  @available(iOS 3.1, *)
  var cameraOverlayView: UIView?
  @available(iOS 3.1, *)
  var cameraViewTransform: CGAffineTransform
  @available(iOS 3.1, *)
  func takePicture()
  @available(iOS 4.0, *)
  func startVideoCapture() -> Bool
  @available(iOS 4.0, *)
  func stopVideoCapture()
  @available(iOS 4.0, *)
  var cameraCaptureMode: UIImagePickerController.CameraCaptureMode
  @available(iOS 4.0, *)
  var cameraDevice: UIImagePickerController.CameraDevice
  @available(iOS 4.0, *)
  var cameraFlashMode: UIImagePickerController.CameraFlashMode
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIImagePickerControllerDelegate : NSObjectProtocol {
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  optional func imagePickerController(_ picker: UIImagePickerController, didFinishPicking image: UIImage, editingInfo: [UIImagePickerController.InfoKey : Any]?)
  @available(swift, obsoleted: 3, renamed: "imagePickerController(_:didFinishPicking:editingInfo:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  optional func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [UIImagePickerController.InfoKey : Any]?)
  @available(iOS 2.0, *)
  optional func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
  @available(iOS 2.0, *)
  optional func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
}
func UIImageWriteToSavedPhotosAlbum(_ image: UIImage, _ completionTarget: Any?, _ completionSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
@available(iOS 3.1, *)
func UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(_ videoPath: String) -> Bool
@available(iOS 3.1, *)
func UISaveVideoAtPathToSavedPhotosAlbum(_ videoPath: String, _ completionTarget: Any?, _ completionSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
