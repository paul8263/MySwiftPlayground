//: [Previous](@previous)

import Foundation

let characterSet = NSMutableCharacterSet.URLFragmentAllowedCharacterSet()

let urlString = "http://www.google.com.au/i?a=1 1&b=2"

print(urlString.stringByAddingPercentEncodingWithAllowedCharacters(characterSet))
print(urlString.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding))

