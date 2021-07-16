@_exported import Foundation

@available(iOS 2.0, *)
class UILabel : UIView, NSCoding, UIContentSizeCategoryAdjusting {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var highlightedTextColor: UIColor?
  var isHighlighted: Bool
  @available(swift, obsoleted: 3, renamed: "isHighlighted")
  var highlighted: Bool
  var isUserInteractionEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isUserInteractionEnabled")
  var userInteractionEnabled: Bool
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  @available(iOS 6.0, *)
  var minimumScaleFactor: CGFloat
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  var lineBreakStrategy: NSParagraphStyle.LineBreakStrategy
  func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  @available(swift, obsoleted: 3, renamed: "textRect(forBounds:limitedToNumberOfLines:)")
  func textRectForBounds(_ bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawText(in rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawText(in:)")
  func drawTextInRect(_ rect: CGRect)
  @available(iOS 6.0, *)
  var preferredMaxLayoutWidth: CGFloat
  @available(iOS, unavailable)
  var enablesMarqueeWhenAncestorFocused: Bool
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var minimumFontSize: CGFloat
  @available(iOS, unavailable, introduced: 6.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var adjustsLetterSpacingToFitWidth: Bool
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
  @available(iOS 10.0, *)
  var adjustsFontForContentSizeCategory: Bool
}
