@_exported import Foundation

@available(iOS 11.0, *)
protocol UIDataSourceTranslating : NSObjectProtocol {
  func presentationSectionIndex(forDataSourceSectionIndex dataSourceSectionIndex: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "presentationSectionIndex(forDataSourceSectionIndex:)")
  func presentationSectionIndexForDataSourceSectionIndex(_ dataSourceSectionIndex: Int) -> Int
  func dataSourceSectionIndex(forPresentationSectionIndex presentationSectionIndex: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "dataSourceSectionIndex(forPresentationSectionIndex:)")
  func dataSourceSectionIndexForPresentationSectionIndex(_ presentationSectionIndex: Int) -> Int
  func presentationIndexPath(forDataSourceIndexPath dataSourceIndexPath: IndexPath?) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "presentationIndexPath(forDataSourceIndexPath:)")
  func presentationIndexPathForDataSourceIndexPath(_ dataSourceIndexPath: IndexPath?) -> IndexPath?
  func dataSourceIndexPath(forPresentationIndexPath presentationIndexPath: IndexPath?) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "dataSourceIndexPath(forPresentationIndexPath:)")
  func dataSourceIndexPathForPresentationIndexPath(_ presentationIndexPath: IndexPath?) -> IndexPath?
  func performUsingPresentationValues(_ actionsToTranslate: () -> Void)
}
