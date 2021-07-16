@_exported import Foundation

extension NSObject {
  class func accessibilityElementCount() -> Int
  func accessibilityElementCount() -> Int
  class func accessibilityElement(at index: Int) -> Any?
  func accessibilityElement(at index: Int) -> Any?
  @available(swift, obsoleted: 3, renamed: "accessibilityElement(at:)")
  class func accessibilityElementAtIndex(_ index: Int) -> Any?
  @available(swift, obsoleted: 3, renamed: "accessibilityElement(at:)")
  func accessibilityElementAtIndex(_ index: Int) -> Any?
  class func index(ofAccessibilityElement element: Any) -> Int
  func index(ofAccessibilityElement element: Any) -> Int
  @available(swift, obsoleted: 3, renamed: "index(ofAccessibilityElement:)")
  class func indexOfAccessibilityElement(_ element: Any) -> Int
  @available(swift, obsoleted: 3, renamed: "index(ofAccessibilityElement:)")
  func indexOfAccessibilityElement(_ element: Any) -> Int
  @available(iOS 8.0, *)
  var accessibilityElements: [Any]?
  @available(iOS 11.0, *)
  var accessibilityContainerType: UIAccessibilityContainerType
  class func accessibilityElements() -> [Any]?
  class func setAccessibilityElements(_ accessibilityElements: [Any]?)
  class func accessibilityContainerType() -> UIAccessibilityContainerType
  class func setAccessibilityContainerType(_ accessibilityContainerType: UIAccessibilityContainerType)
}
@available(iOS 11.0, *)
protocol UIAccessibilityContainerDataTableCell : NSObjectProtocol {
  func accessibilityRowRange() -> NSRange
  func accessibilityColumnRange() -> NSRange
}
@available(iOS 11.0, *)
protocol UIAccessibilityContainerDataTable : NSObjectProtocol {
  func accessibilityDataTableCellElement(forRow row: Int, column: Int) -> UIAccessibilityContainerDataTableCell?
  @available(swift, obsoleted: 3, renamed: "accessibilityDataTableCellElement(forRow:column:)")
  func accessibilityDataTableCellElementForRow(_ row: Int, column: Int) -> UIAccessibilityContainerDataTableCell?
  func accessibilityRowCount() -> Int
  func accessibilityColumnCount() -> Int
  optional func accessibilityHeaderElements(forRow row: Int) -> [UIAccessibilityContainerDataTableCell]?
  @available(swift, obsoleted: 3, renamed: "accessibilityHeaderElements(forRow:)")
  optional func accessibilityHeaderElementsForRow(_ row: Int) -> [UIAccessibilityContainerDataTableCell]?
  optional func accessibilityHeaderElements(forColumn column: Int) -> [UIAccessibilityContainerDataTableCell]?
  @available(swift, obsoleted: 3, renamed: "accessibilityHeaderElements(forColumn:)")
  optional func accessibilityHeaderElementsForColumn(_ column: Int) -> [UIAccessibilityContainerDataTableCell]?
}
