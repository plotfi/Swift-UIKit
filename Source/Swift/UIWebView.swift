@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIWebView.NavigationType")
typealias UIWebViewNavigationType = UIWebView.NavigationType
extension UIWebView {
  enum NavigationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case linkClicked
    @available(swift, obsoleted: 3, renamed: "linkClicked")
    static var LinkClicked: UIWebView.NavigationType { get }
    case formSubmitted
    @available(swift, obsoleted: 3, renamed: "formSubmitted")
    static var FormSubmitted: UIWebView.NavigationType { get }
    case backForward
    @available(swift, obsoleted: 3, renamed: "backForward")
    static var BackForward: UIWebView.NavigationType { get }
    case reload
    @available(swift, obsoleted: 3, renamed: "reload")
    static var Reload: UIWebView.NavigationType { get }
    case formResubmitted
    @available(swift, obsoleted: 3, renamed: "formResubmitted")
    static var FormResubmitted: UIWebView.NavigationType { get }
    case other
    @available(swift, obsoleted: 3, renamed: "other")
    static var Other: UIWebView.NavigationType { get }
  }
  enum PaginationMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unpaginated
    @available(swift, obsoleted: 3, renamed: "unpaginated")
    static var Unpaginated: UIWebView.PaginationMode { get }
    case leftToRight
    @available(swift, obsoleted: 3, renamed: "leftToRight")
    static var LeftToRight: UIWebView.PaginationMode { get }
    case topToBottom
    @available(swift, obsoleted: 3, renamed: "topToBottom")
    static var TopToBottom: UIWebView.PaginationMode { get }
    case bottomToTop
    @available(swift, obsoleted: 3, renamed: "bottomToTop")
    static var BottomToTop: UIWebView.PaginationMode { get }
    case rightToLeft
    @available(swift, obsoleted: 3, renamed: "rightToLeft")
    static var RightToLeft: UIWebView.PaginationMode { get }
  }
  enum PaginationBreakingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case page
    @available(swift, obsoleted: 3, renamed: "page")
    static var Page: UIWebView.PaginationBreakingMode { get }
    case column
    @available(swift, obsoleted: 3, renamed: "column")
    static var Column: UIWebView.PaginationBreakingMode { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIWebView.PaginationMode")
typealias UIWebPaginationMode = UIWebView.PaginationMode
@available(swift, obsoleted: 4.2, renamed: "UIWebView.PaginationBreakingMode")
typealias UIWebPaginationBreakingMode = UIWebView.PaginationBreakingMode
@available(iOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported; please adopt WKWebView.")
class UIWebView : UIView, NSCoding, UIScrollViewDelegate {
  unowned(unsafe) var delegate: @sil_unmanaged UIWebViewDelegate?
  @available(iOS 5.0, *)
  var scrollView: UIScrollView { get }
  func loadRequest(_ request: URLRequest)
  func loadHTMLString(_ string: String, baseURL: URL?)
  func load(_ data: Data, mimeType MIMEType: String, textEncodingName: String, baseURL: URL)
  @available(swift, obsoleted: 3, renamed: "load(_:mimeType:textEncodingName:baseURL:)")
  func loadData(_ data: Data, MIMEType: String, textEncodingName: String, baseURL: URL)
  var request: URLRequest? { get }
  func reload()
  func stopLoading()
  func goBack()
  func goForward()
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  var isLoading: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isLoading")
  var loading: Bool { get }
  func stringByEvaluatingJavaScript(from script: String) -> String?
  @available(swift, obsoleted: 3, renamed: "stringByEvaluatingJavaScript(from:)")
  func stringByEvaluatingJavaScriptFromString(_ script: String) -> String?
  var scalesPageToFit: Bool
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var detectsPhoneNumbers: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 4.0, *)
  var allowsInlineMediaPlayback: Bool
  @available(iOS 4.0, *)
  var mediaPlaybackRequiresUserAction: Bool
  @available(iOS 5.0, *)
  var mediaPlaybackAllowsAirPlay: Bool
  @available(iOS 6.0, *)
  var suppressesIncrementalRendering: Bool
  @available(iOS 6.0, *)
  var keyboardDisplayRequiresUserAction: Bool
  @available(iOS 7.0, *)
  var paginationMode: UIWebView.PaginationMode
  @available(iOS 7.0, *)
  var paginationBreakingMode: UIWebView.PaginationBreakingMode
  @available(iOS 7.0, *)
  var pageLength: CGFloat
  @available(iOS 7.0, *)
  var gapBetweenPages: CGFloat
  @available(iOS 7.0, *)
  var pageCount: Int { get }
  @available(iOS 9.0, *)
  var allowsPictureInPictureMediaPlayback: Bool
  @available(iOS 9.0, *)
  var allowsLinkPreview: Bool
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
  @available(iOS 2.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(iOS 11.0, *)
  func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView)
}
protocol UIWebViewDelegate : NSObjectProtocol {
  @available(iOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool
  @available(swift, obsoleted: 3, renamed: "webView(_:shouldStartLoadWith:navigationType:)")
  @available(iOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webView(_ webView: UIWebView, shouldStartLoadWithRequest request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool
  @available(iOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webViewDidStartLoad(_ webView: UIWebView)
  @available(iOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webViewDidFinishLoad(_ webView: UIWebView)
  @available(iOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webView(_ webView: UIWebView, didFailLoadWithError error: Error)
}
