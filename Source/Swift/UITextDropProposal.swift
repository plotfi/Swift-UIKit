@_exported import Foundation

@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITextDropProposal.Action")
typealias UITextDropAction = UITextDropProposal.Action
extension UITextDropProposal {
  @available(iOS 11.0, *)
  enum Action : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case insert
    @available(swift, obsoleted: 3, renamed: "insert")
    static var Insert: UITextDropProposal.Action { get }
    case replaceSelection
    @available(swift, obsoleted: 3, renamed: "replaceSelection")
    static var ReplaceSelection: UITextDropProposal.Action { get }
    case replaceAll
    @available(swift, obsoleted: 3, renamed: "replaceAll")
    static var ReplaceAll: UITextDropProposal.Action { get }
  }
  @available(iOS 11.0, *)
  enum ProgressMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case system
    @available(swift, obsoleted: 3, renamed: "system")
    static var System: UITextDropProposal.ProgressMode { get }
    case custom
    @available(swift, obsoleted: 3, renamed: "custom")
    static var Custom: UITextDropProposal.ProgressMode { get }
  }
  @available(iOS 11.0, *)
  enum Performer : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case view
    @available(swift, obsoleted: 3, renamed: "view")
    static var View: UITextDropProposal.Performer { get }
    case delegate
    @available(swift, obsoleted: 3, renamed: "delegate")
    static var Delegate: UITextDropProposal.Performer { get }
  }
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITextDropProposal.ProgressMode")
typealias UITextDropProgressMode = UITextDropProposal.ProgressMode
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITextDropProposal.Performer")
typealias UITextDropPerformer = UITextDropProposal.Performer
@available(iOS 11.0, *)
class UITextDropProposal : UIDropProposal, NSCopying {
  var dropAction: UITextDropProposal.Action
  var dropProgressMode: UITextDropProposal.ProgressMode
  var useFastSameViewOperations: Bool
  var dropPerformer: UITextDropProposal.Performer
  init(operation: UIDropOperation)
  @available(*, unavailable)
  convenience init()
}
