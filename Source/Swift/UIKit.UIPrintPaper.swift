@_exported import Foundation

@available(iOS 4.2, *)
class UIPrintPaper : NSObject {
  class func bestPaper(forPageSize contentSize: CGSize, withPapersFrom paperList: [UIPrintPaper]) -> UIPrintPaper
  @available(swift, obsoleted: 3, renamed: "bestPaper(forPageSize:withPapersFrom:)")
  class func bestPaperForPageSize(_ contentSize: CGSize, withPapersFromArray paperList: [UIPrintPaper]) -> UIPrintPaper
  var paperSize: CGSize { get }
  var printableRect: CGRect { get }
  init()
}
extension UIPrintPaper {
  func printRect() -> CGRect
}
