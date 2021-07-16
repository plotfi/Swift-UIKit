@_exported import Foundation

@available(iOS 14.0, *)
enum UIContentInsetsReference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case automatic
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: UIContentInsetsReference { get }
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIContentInsetsReference { get }
  case safeArea
  @available(swift, obsoleted: 3, renamed: "safeArea")
  static var SafeArea: UIContentInsetsReference { get }
  case layoutMargins
  @available(swift, obsoleted: 3, renamed: "layoutMargins")
  static var LayoutMargins: UIContentInsetsReference { get }
  case readableContent
  @available(swift, obsoleted: 3, renamed: "readableContent")
  static var ReadableContent: UIContentInsetsReference { get }
}
@available(iOS 13.0, *)
class UICollectionViewCompositionalLayoutConfiguration : NSObject, NSCopying {
  var scrollDirection: UICollectionView.ScrollDirection
  var interSectionSpacing: CGFloat
  var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem]
  @available(iOS 14.0, *)
  var contentInsetsReference: UIContentInsetsReference
  init()
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
typealias UICollectionViewCompositionalLayoutSectionProvider = (Int, NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection?
@available(iOS 13.0, *)
class UICollectionViewCompositionalLayout : UICollectionViewLayout {
  init(section: NSCollectionLayoutSection)
  init(section: NSCollectionLayoutSection, configuration: UICollectionViewCompositionalLayoutConfiguration)
  init(sectionProvider: @escaping UICollectionViewCompositionalLayoutSectionProvider)
  init(sectionProvider: @escaping UICollectionViewCompositionalLayoutSectionProvider, configuration: UICollectionViewCompositionalLayoutConfiguration)
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  @NSCopying var configuration: UICollectionViewCompositionalLayoutConfiguration
  init?(coder: NSCoder)
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCompositionalLayout {
  static func list(using configuration: UICollectionLayoutListConfiguration) -> UICollectionViewCompositionalLayout
}
@available(iOS 13.0, *)
enum UICollectionLayoutSectionOrthogonalScrollingBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UICollectionLayoutSectionOrthogonalScrollingBehavior { get }
  case continuous
  @available(swift, obsoleted: 3, renamed: "continuous")
  static var Continuous: UICollectionLayoutSectionOrthogonalScrollingBehavior { get }
  case continuousGroupLeadingBoundary
  @available(swift, obsoleted: 3, renamed: "continuousGroupLeadingBoundary")
  static var ContinuousGroupLeadingBoundary: UICollectionLayoutSectionOrthogonalScrollingBehavior { get }
  case paging
  @available(swift, obsoleted: 3, renamed: "paging")
  static var Paging: UICollectionLayoutSectionOrthogonalScrollingBehavior { get }
  case groupPaging
  @available(swift, obsoleted: 3, renamed: "groupPaging")
  static var GroupPaging: UICollectionLayoutSectionOrthogonalScrollingBehavior { get }
  case groupPagingCentered
  @available(swift, obsoleted: 3, renamed: "groupPagingCentered")
  static var GroupPagingCentered: UICollectionLayoutSectionOrthogonalScrollingBehavior { get }
}
typealias NSCollectionLayoutSectionVisibleItemsInvalidationHandler = ([NSCollectionLayoutVisibleItem], CGPoint, NSCollectionLayoutEnvironment) -> Void
@available(iOS 13.0, *)
class NSCollectionLayoutSection : NSObject, NSCopying {
  convenience init(group: NSCollectionLayoutGroup)
  @available(*, unavailable, renamed: "init(group:)", message: "Not available in Swift")
  class func sectionWithGroup(_ group: NSCollectionLayoutGroup) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var contentInsets: NSDirectionalEdgeInsets
  var interGroupSpacing: CGFloat
  @available(iOS 14.0, *)
  var contentInsetsReference: UIContentInsetsReference
  var orthogonalScrollingBehavior: UICollectionLayoutSectionOrthogonalScrollingBehavior
  var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem]
  var supplementariesFollowContentInsets: Bool
  var visibleItemsInvalidationHandler: NSCollectionLayoutSectionVisibleItemsInvalidationHandler?
  var decorationItems: [NSCollectionLayoutDecorationItem]
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}

@available(iOS 14.0, tvOS 14.0, *)
extension NSCollectionLayoutSection {
  static func list(using configuration: UICollectionLayoutListConfiguration, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection
}
@available(iOS 13.0, *)
class NSCollectionLayoutItem : NSObject, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize)
  @available(*, unavailable, renamed: "init(layoutSize:)", message: "Not available in Swift")
  class func itemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize) -> Self
  convenience init(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem])
  @available(*, unavailable, renamed: "init(layoutSize:supplementaryItems:)", message: "Not available in Swift")
  class func itemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem]) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var contentInsets: NSDirectionalEdgeInsets
  @NSCopying var edgeSpacing: NSCollectionLayoutEdgeSpacing?
  var layoutSize: NSCollectionLayoutSize { get }
  var supplementaryItems: [NSCollectionLayoutSupplementaryItem] { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
class NSCollectionLayoutGroupCustomItem : NSObject, NSCopying {
  convenience init(frame: CGRect)
  @available(*, unavailable, renamed: "init(frame:)", message: "Not available in Swift")
  class func customItemWithFrame(_ frame: CGRect) -> Self
  convenience init(frame: CGRect, zIndex: Int)
  @available(*, unavailable, renamed: "init(frame:zIndex:)", message: "Not available in Swift")
  class func customItemWithFrame(_ frame: CGRect, zIndex: Int) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var frame: CGRect { get }
  var zIndex: Int { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
typealias NSCollectionLayoutGroupCustomItemProvider = (NSCollectionLayoutEnvironment) -> [NSCollectionLayoutGroupCustomItem]
@available(iOS 13.0, *)
class NSCollectionLayoutGroup : NSCollectionLayoutItem, NSCopying {
  class func horizontal(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self
  @available(swift, obsoleted: 3, renamed: "horizontal(layoutSize:subitem:count:)")
  class func horizontalGroupWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self
  class func horizontal(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self
  @available(swift, obsoleted: 3, renamed: "horizontal(layoutSize:subitems:)")
  class func horizontalGroupWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self
  class func vertical(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self
  @available(swift, obsoleted: 3, renamed: "vertical(layoutSize:subitem:count:)")
  class func verticalGroupWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self
  class func vertical(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self
  @available(swift, obsoleted: 3, renamed: "vertical(layoutSize:subitems:)")
  class func verticalGroupWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self
  class func custom(layoutSize: NSCollectionLayoutSize, itemProvider: @escaping NSCollectionLayoutGroupCustomItemProvider) -> Self
  @available(swift, obsoleted: 3, renamed: "custom(layoutSize:itemProvider:)")
  class func customGroupWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, itemProvider: @escaping NSCollectionLayoutGroupCustomItemProvider) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var supplementaryItems: [NSCollectionLayoutSupplementaryItem]
  @NSCopying var interItemSpacing: NSCollectionLayoutSpacing?
  var subitems: [NSCollectionLayoutItem] { get }
  func visualDescription() -> String
  convenience init(layoutSize: NSCollectionLayoutSize)
  convenience init(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem])
}
@available(iOS 13.0, *)
class NSCollectionLayoutDimension : NSObject, NSCopying {
  class func fractionalWidth(_ fractionalWidth: CGFloat) -> Self
  @available(swift, obsoleted: 3, renamed: "fractionalWidth(_:)")
  class func fractionalWidthDimension(_ fractionalWidth: CGFloat) -> Self
  class func fractionalHeight(_ fractionalHeight: CGFloat) -> Self
  @available(swift, obsoleted: 3, renamed: "fractionalHeight(_:)")
  class func fractionalHeightDimension(_ fractionalHeight: CGFloat) -> Self
  class func absolute(_ absoluteDimension: CGFloat) -> Self
  @available(swift, obsoleted: 3, renamed: "absolute(_:)")
  class func absoluteDimension(_ absoluteDimension: CGFloat) -> Self
  class func estimated(_ estimatedDimension: CGFloat) -> Self
  @available(swift, obsoleted: 3, renamed: "estimated(_:)")
  class func estimatedDimension(_ estimatedDimension: CGFloat) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var isFractionalWidth: Bool { get }
  var isFractionalHeight: Bool { get }
  var isAbsolute: Bool { get }
  var isEstimated: Bool { get }
  var dimension: CGFloat { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
class NSCollectionLayoutSize : NSObject, NSCopying {
  convenience init(widthDimension width: NSCollectionLayoutDimension, heightDimension height: NSCollectionLayoutDimension)
  @available(*, unavailable, renamed: "init(widthDimension:heightDimension:)", message: "Not available in Swift")
  class func sizeWithWidthDimension(_ width: NSCollectionLayoutDimension, heightDimension height: NSCollectionLayoutDimension) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var widthDimension: NSCollectionLayoutDimension { get }
  var heightDimension: NSCollectionLayoutDimension { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
class NSCollectionLayoutSpacing : NSObject, NSCopying {
  class func flexible(_ flexibleSpacing: CGFloat) -> Self
  @available(swift, obsoleted: 3, renamed: "flexible(_:)")
  class func flexibleSpacing(_ flexibleSpacing: CGFloat) -> Self
  class func fixed(_ fixedSpacing: CGFloat) -> Self
  @available(swift, obsoleted: 3, renamed: "fixed(_:)")
  class func fixedSpacing(_ fixedSpacing: CGFloat) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var spacing: CGFloat { get }
  var isFlexible: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isFlexible")
  var isFlexibleSpacing: Bool { get }
  var isFixed: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isFixed")
  var isFixedSpacing: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
class NSCollectionLayoutEdgeSpacing : NSObject, NSCopying {
  convenience init(leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?)
  @available(swift, obsoleted: 3, renamed: "init(leading:top:trailing:bottom:)")
  convenience init(forLeading leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?)
  @available(*, unavailable, renamed: "init(leading:top:trailing:bottom:)", message: "Not available in Swift")
  class func spacingForLeading(_ leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var leading: NSCollectionLayoutSpacing? { get }
  var top: NSCollectionLayoutSpacing? { get }
  var trailing: NSCollectionLayoutSpacing? { get }
  var bottom: NSCollectionLayoutSpacing? { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
class NSCollectionLayoutSupplementaryItem : NSCollectionLayoutItem, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor)
  @available(*, unavailable, renamed: "init(layoutSize:elementKind:containerAnchor:)", message: "Not available in Swift")
  class func supplementaryItemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor) -> Self
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor, itemAnchor: NSCollectionLayoutAnchor)
  @available(*, unavailable, renamed: "init(layoutSize:elementKind:containerAnchor:itemAnchor:)", message: "Not available in Swift")
  class func supplementaryItemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor, itemAnchor: NSCollectionLayoutAnchor) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var zIndex: Int
  var elementKind: String { get }
  var containerAnchor: NSCollectionLayoutAnchor { get }
  var itemAnchor: NSCollectionLayoutAnchor? { get }
  convenience init(layoutSize: NSCollectionLayoutSize)
  convenience init(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem])
}
@available(iOS 13.0, *)
class NSCollectionLayoutBoundarySupplementaryItem : NSCollectionLayoutSupplementaryItem, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment)
  @available(*, unavailable, renamed: "init(layoutSize:elementKind:alignment:)", message: "Not available in Swift")
  class func boundarySupplementaryItemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment) -> Self
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment, absoluteOffset: CGPoint)
  @available(*, unavailable, renamed: "init(layoutSize:elementKind:alignment:absoluteOffset:)", message: "Not available in Swift")
  class func boundarySupplementaryItemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment, absoluteOffset: CGPoint) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var extendsBoundary: Bool
  var pinToVisibleBounds: Bool
  var alignment: NSRectAlignment { get }
  var offset: CGPoint { get }
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor)
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor, itemAnchor: NSCollectionLayoutAnchor)
  convenience init(layoutSize: NSCollectionLayoutSize)
  convenience init(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem])
}
@available(iOS 13.0, *)
class NSCollectionLayoutDecorationItem : NSCollectionLayoutItem, NSCopying {
  class func background(elementKind: String) -> Self
  @available(swift, obsoleted: 3, renamed: "background(elementKind:)")
  class func backgroundDecorationItemWithElementKind(_ elementKind: String) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var zIndex: Int
  var elementKind: String { get }
  convenience init(layoutSize: NSCollectionLayoutSize)
  convenience init(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem])
}
@available(iOS 13.0, *)
class NSCollectionLayoutAnchor : NSObject, NSCopying {
  convenience init(edges: NSDirectionalRectEdge)
  @available(*, unavailable, renamed: "init(edges:)", message: "Not available in Swift")
  class func layoutAnchorWithEdges(_ edges: NSDirectionalRectEdge) -> Self
  convenience init(edges: NSDirectionalRectEdge, absoluteOffset: CGPoint)
  @available(*, unavailable, renamed: "init(edges:absoluteOffset:)", message: "Not available in Swift")
  class func layoutAnchorWithEdges(_ edges: NSDirectionalRectEdge, absoluteOffset: CGPoint) -> Self
  convenience init(edges: NSDirectionalRectEdge, fractionalOffset: CGPoint)
  @available(*, unavailable, renamed: "init(edges:fractionalOffset:)", message: "Not available in Swift")
  class func layoutAnchorWithEdges(_ edges: NSDirectionalRectEdge, fractionalOffset: CGPoint) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var edges: NSDirectionalRectEdge { get }
  var offset: CGPoint { get }
  var isAbsoluteOffset: Bool { get }
  var isFractionalOffset: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
protocol NSCollectionLayoutContainer : NSObjectProtocol {
  var contentSize: CGSize { get }
  var effectiveContentSize: CGSize { get }
  var contentInsets: NSDirectionalEdgeInsets { get }
  var effectiveContentInsets: NSDirectionalEdgeInsets { get }
}
@available(iOS 13.0, *)
protocol NSCollectionLayoutEnvironment : NSObjectProtocol {
  var container: NSCollectionLayoutContainer { get }
  var traitCollection: UITraitCollection { get }
}
@available(iOS 13.0, *)
protocol NSCollectionLayoutVisibleItem : UIDynamicItem {
  var alpha: CGFloat { get set }
  var zIndex: Int { get set }
  var isHidden: Bool { get set }
  @available(swift, obsoleted: 3, renamed: "isHidden")
  var hidden: Bool { get set }
  var center: CGPoint { get set }
  var transform: CGAffineTransform { get set }
  var transform3D: CATransform3D { get set }
  var name: String { get }
  var indexPath: IndexPath { get }
  var frame: CGRect { get }
  var bounds: CGRect { get }
  var representedElementCategory: UICollectionView.ElementCategory { get }
  var representedElementKind: String? { get }
}
