//
//  Defaults.swift
//  Login
//
//  Created by Ethan Neff on 1/11/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

import UIKit

class Defaults {
  static let colorBlue = UIColor(hex:"#3498db")
  static let colorWhite1 = UIColor (hex: "#ffffff")
  static let colorWhite2 = UIColor (hex: "#fafafa")
  static let colorWhite3 = UIColor (hex: "#f5f5f5")
  static let colorWhite4 = UIColor (hex: "#e0e0e0")
  static let colorBlack1 = UIColor (hex: "#000000")
  static let colorBlack2 = UIColor (hex: "#212121")
  static let colorBlack3 = UIColor (hex: "#303030")
  static let colorBlack4 = UIColor (hex: "#424242")
  static let colorGrey1 = UIColor (hex: "#212121")
  static let colorGrey2 = UIColor (hex: "#757575")
  
  static let fontText1 = UIFont.systemFontOfSize(24, weight: UIFontWeightRegular)
  static let fontText2 = UIFont.systemFontOfSize(20, weight: UIFontWeightBold)
  static let fontText3 = UIFont.systemFontOfSize(18, weight: UIFontWeightRegular)
  static let fontText4 = UIFont.systemFontOfSize(18, weight: UIFontWeightBold)
  static let fontText5 = UIFont.systemFontOfSize(18, weight: UIFontWeightRegular)
  static let colorText1 = colorBlue
  static let colorText2 = colorGrey1
  static let colorText3 = colorGrey1
  static let colorText4 = colorGrey2
  static let colorText5 = colorGrey2
  
  
  static func set() {
    // TODO: Does not work (becuase view happens after load
//    // height
//    UITextField.appearance().frame.size.height = 40
//    UILabel.appearance().frame.size.height = 40
//    UIButton.appearance().frame.size.height = 40
//    
//    // color
//    UITextField.appearance().backgroundColor = colorWhite1
//    UILabel.appearance().textColor = colorText2
//    UIButton.appearance().titleLabel?.textColor = colorText3
    
  }
}

extension UIColor {
  convenience init(hex: String) {
    let hex = hex.stringByTrimmingCharactersInSet(NSCharacterSet.alphanumericCharacterSet().invertedSet)
    var int = UInt32()
    NSScanner(string: hex).scanHexInt(&int)
    let a, r, g, b: UInt32
    switch hex.characters.count {
    case 3: // RGB (12-bit)
      (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
    case 6: // RGB (24-bit)
      (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
    case 8: // ARGB (32-bit)
      (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
    default:
      (a, r, g, b) = (1, 1, 1, 0)
    }
    self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
  }
}