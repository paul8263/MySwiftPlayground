//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)
func convertHTMLStringToNSAttributedString(string: String) -> NSAttributedString {
    let modifiedFont = NSString(format: "<span style\"font-family: PingFangSC-Regular; font-size: 16.0\">%@</span>", string)
    return try! NSAttributedString(data: modifiedFont.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)!, options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: NSUTF8StringEncoding], documentAttributes: nil)
}

print(convertHTMLStringToNSAttributedString("123"))
