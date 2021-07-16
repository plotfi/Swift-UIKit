@_exported import Foundation

@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollectionViewFlowLayout.automaticSize")
let UICollectionViewFlowLayoutAutomaticSize: CGSize
extension UICollectionViewFlowLayout {
  @available(iOS 10.0, *)
  class let automaticSize: CGSize
  @available(iOS 11.0, *)
  enum SectionInsetReference : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case fromContentInset
    @available(swift, obsoleted: 3, renamed: "fromContentInset")
    static var FromContentInset: UICollectionViewFlowLayout.SectionInsetReference { get }
    case fromSafeArea
    @available(swift, obsoleted: 3, renamed: "fromSafeArea")
    static var FromSafeArea: UICollectionViewFlowLayout.SectionInsetReference { get }
    case fromLayoutMargins
    @available(swift, obsoleted: 3, renamed: "fromLayoutMargins")
    static var FromLayoutMargins: UICollectionViewFlowLayout.SectionInsetReference { get }
  }
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollectionViewFlowLayout.SectionInsetReference")
typealias UICollectionViewFlowLayoutSectionInsetReference = UICollectionViewFlowLayout.SectionInsetReference
@available(iOS 7.0, *)
class UICollectionViewFlowLayoutInvalidationContext : UICollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol UICollectionViewDelegateFlowLayout : UICollectionViewDelegate {
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
  @available(swift, obsoleted: 3, renamed: "collectionView(_:layout:sizeForItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
  @available(swift, obsoleted: 3, renamed: "collectionView(_:layout:insetForSectionAt:)")
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "collectionView(_:layout:minimumLineSpacingForSectionAt:)")
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "collectionView(_:layout:minimumInteritemSpacingForSectionAt:)")
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize
}
@available(iOS 6.0, *)
class UICollectionViewFlowLayout : UICollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: CGSize
  @available(iOS 8.0, *)
  var estimatedItemSize: CGSize
  var scrollDirection: UICollectionView.ScrollDirection
  var headerReferenceSize: CGSize
  var footerReferenceSize: CGSize
  var sectionInset: UIEdgeInsets

  /// The reference boundary that the section insets will be defined as relative to. Defaults to `.fromContentInset`.
  /// NOTE: Content inset will always be respected at a minimum. For example, if the sectionInsetReference equals `.fromSafeArea`, but the adjusted content inset is greater that the combination of the safe area and section insets, then section content will be aligned with the content inset instead.
  @available(iOS 11.0, *)
  var sectionInsetReference: UICollectionViewFlowLayout.SectionInsetReference
  @available(iOS 9.0, *)
  var sectionHeadersPinToVisibleBounds: Bool
  @available(iOS 9.0, *)
  var sectionFootersPinToVisibleBounds: Bool
  init()
  init?(coder: NSCoder)
}
