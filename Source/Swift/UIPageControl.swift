@_exported import Foundation

@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPageControl.InteractionState")
typealias UIPageControlInteractionState = UIPageControl.InteractionState
extension UIPageControl {
  @available(iOS 14.0, *)
  enum InteractionState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int

    /// The default interaction state, where no interaction has occurred.
    case none

    /// The default interaction state, where no interaction has occurred.
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIPageControl.InteractionState { get }

    /// The interaction state for which the page was changed via a single, discrete interaction.
    case discrete

    /// The interaction state for which the page was changed via a single, discrete interaction.
    @available(swift, obsoleted: 3, renamed: "discrete")
    static var Discrete: UIPageControl.InteractionState { get }

    /// The interaction state for which the page was changed via a continuous interaction.
    case continuous

    /// The interaction state for which the page was changed via a continuous interaction.
    @available(swift, obsoleted: 3, renamed: "continuous")
    static var Continuous: UIPageControl.InteractionState { get }
  }
  @available(iOS 14.0, *)
  enum BackgroundStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int

    /// The default background style that adapts based on the current interaction state.
    case automatic

    /// The default background style that adapts based on the current interaction state.
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UIPageControl.BackgroundStyle { get }

    /// The background style that shows a full background regardless of the interaction
    case prominent

    /// The background style that shows a full background regardless of the interaction
    @available(swift, obsoleted: 3, renamed: "prominent")
    static var Prominent: UIPageControl.BackgroundStyle { get }

    /// The background style that shows a minimal background regardless of the interaction
    case minimal

    /// The background style that shows a minimal background regardless of the interaction
    @available(swift, obsoleted: 3, renamed: "minimal")
    static var Minimal: UIPageControl.BackgroundStyle { get }
  }
}
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPageControl.BackgroundStyle")
typealias UIPageControlBackgroundStyle = UIPageControl.BackgroundStyle
@available(iOS 2.0, *)
class UIPageControl : UIControl {

  /// default is 0
  var numberOfPages: Int

  /// default is 0. Value is pinned to 0..numberOfPages-1
  var currentPage: Int

  /// hides the indicator if there is only one page, default is NO
  var hidesForSinglePage: Bool

  /// The tint color for non-selected indicators. Default is nil.
  @available(iOS 6.0, *)
  var pageIndicatorTintColor: UIColor?

  /// The tint color for the currently-selected indicators. Default is nil.
  @available(iOS 6.0, *)
  var currentPageIndicatorTintColor: UIColor?

  /// The preferred background style. Default is UIPageControlBackgroundStyleAutomatic on iOS, and UIPageControlBackgroundStyleProminent on tvOS.
  @available(iOS 14.0, *)
  var backgroundStyle: UIPageControl.BackgroundStyle

  /// The current interaction state for when the current page changes. Default is UIPageControlInteractionStateNone
  @available(iOS 14.0, *)
  var interactionState: UIPageControl.InteractionState { get }

  /// Returns YES if the continuous interaction is enabled, NO otherwise. Default is YES.
  @available(iOS 14.0, *)
  var allowsContinuousInteraction: Bool

  /// The preferred image for indicators. Symbol images are recommended. Default is nil.
  @available(iOS 14.0, *)
  var preferredIndicatorImage: UIImage?

  /**
   * @abstract Returns the override indicator image for the specific page, nil if no override image was set.
   * @param page Must be in the range of 0..numberOfPages
   */
  @available(iOS 14.0, *)
  func indicatorImage(forPage page: Int) -> UIImage?

  /**
   * @abstract Returns the override indicator image for the specific page, nil if no override image was set.
   * @param page Must be in the range of 0..numberOfPages
   */
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "indicatorImage(forPage:)")
  func indicatorImageForPage(_ page: Int) -> UIImage?

  /**
   * @abstract Override the indicator image for a specific page. Symbol images are recommended.
   * @param image    The image for the indicator. Resets to the default if image is nil.
   * @param page      Must be in the range of 0..numberOfPages
   */
  @available(iOS 14.0, *)
  func setIndicatorImage(_ image: UIImage?, forPage page: Int)

  /// Returns the minimum size required to display indicators for the given page count. Can be used to size the control if the page count could change.
  func size(forNumberOfPages pageCount: Int) -> CGSize

  /// Returns the minimum size required to display indicators for the given page count. Can be used to size the control if the page count could change.
  @available(swift, obsoleted: 3, renamed: "size(forNumberOfPages:)")
  func sizeForNumberOfPages(_ pageCount: Int) -> CGSize

  /// if set, tapping to a new page won't update the currently displayed page until -updateCurrentPageDisplay is called. default is NO
  @available(iOS, introduced: 2.0, deprecated: 14.0, message: "defersCurrentPageDisplay no longer does anything reasonable with the new interaction mode.")
  var defersCurrentPageDisplay: Bool

  /// update page display to match the currentPage. ignored if defersCurrentPageDisplay is NO. setting the page value directly will update immediately
  @available(iOS, introduced: 2.0, deprecated: 14.0, message: "updateCurrentPageDisplay no longer does anything reasonable with the new interaction mode.")
  func updateCurrentPageDisplay()
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}
