@_exported import Foundation

func UIGraphicsGetCurrentContext() -> CGContext?
func UIGraphicsPushContext(_ context: CGContext)
func UIGraphicsPopContext()
func UIRectFillUsingBlendMode(_ rect: CGRect, _ blendMode: CGBlendMode)
func UIRectFill(_ rect: CGRect)
func UIRectFrameUsingBlendMode(_ rect: CGRect, _ blendMode: CGBlendMode)
func UIRectFrame(_ rect: CGRect)
func UIRectClip(_ rect: CGRect)
func UIGraphicsBeginImageContext(_ size: CGSize)
@available(iOS 4.0, *)
func UIGraphicsBeginImageContextWithOptions(_ size: CGSize, _ opaque: Bool, _ scale: CGFloat)
func UIGraphicsGetImageFromCurrentImageContext() -> UIImage?
func UIGraphicsEndImageContext()
@available(iOS 3.2, *)
func UIGraphicsBeginPDFContextToFile(_ path: String, _ bounds: CGRect, _ documentInfo: [AnyHashable : Any]?) -> Bool
@available(iOS 3.2, *)
func UIGraphicsBeginPDFContextToData(_ data: NSMutableData, _ bounds: CGRect, _ documentInfo: [AnyHashable : Any]?)
@available(iOS 3.2, *)
func UIGraphicsEndPDFContext()
@available(iOS 3.2, *)
func UIGraphicsBeginPDFPage()
@available(iOS 3.2, *)
func UIGraphicsBeginPDFPageWithInfo(_ bounds: CGRect, _ pageInfo: [AnyHashable : Any]?)
@available(iOS 3.2, *)
func UIGraphicsGetPDFContextBounds() -> CGRect
@available(iOS 3.2, *)
func UIGraphicsSetPDFContextURLForRect(_ url: URL, _ rect: CGRect)
@available(iOS 3.2, *)
func UIGraphicsAddPDFContextDestinationAtPoint(_ name: String, _ point: CGPoint)
@available(iOS 3.2, *)
func UIGraphicsSetPDFContextDestinationForRect(_ name: String, _ rect: CGRect)
