@_exported import Foundation

@available(iOS 3.0, *)
class UILocalizedIndexedCollation : NSObject {
  class func current() -> Self
  @available(swift, obsoleted: 3, renamed: "current()")
  class func currentCollation() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func section(forSectionIndexTitle indexTitleIndex: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "section(forSectionIndexTitle:)")
  func sectionForSectionIndexTitleAtIndex(_ indexTitleIndex: Int) -> Int
  func section(for object: Any, collationStringSelector selector: Selector) -> Int
  @available(swift, obsoleted: 3, renamed: "section(for:collationStringSelector:)")
  func sectionForObject(_ object: Any, collationStringSelector selector: Selector) -> Int
  func sortedArray(from array: [Any], collationStringSelector selector: Selector) -> [Any]
  @available(swift, obsoleted: 3, renamed: "sortedArray(from:collationStringSelector:)")
  func sortedArrayFromArray(_ array: [Any], collationStringSelector selector: Selector) -> [Any]
  init()
}
