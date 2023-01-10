//
//  Extention File.swift
//  Haboob
//
//  Created by Sumit kumasr on 27/12/22.
//

import Foundation
import UIKit


extension UIColor{
    static let testColor = UIColor(red: 250/255, green: 242/255, blue: 242/255, alpha: 1.0)
    static let inActiveColor = UIColor(red: 216/255, green: 217/255, blue: 210/255, alpha: 1.0)
    static let activeColor = UIColor(red: 215/255, green: 143/255, blue: 102/255, alpha: 1.0)
}


extension UIView{
    //If you want only round corners
    func ViewBorderCorner(radius:CGFloat){
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    //if you want to give shadow with round corners
    func ViewShadowWithCornerRaduis(shadowColor:CGColor,shadowOpacity:CGFloat,shadowRadius:CGFloat,shadowOffset:CGSize,radius:CGFloat) {
        layer.masksToBounds = true
        layer.shadowColor = shadowColor
        layer.shadowOpacity = Float(shadowOpacity)
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
        layer.masksToBounds = false
        layer.cornerRadius = radius
    }
   // if you want to add border
    func ViewBorder(borderCornerRadius:CGFloat,borderColor:CGColor,borderWith:CGFloat){
        layer.cornerRadius = borderCornerRadius
        layer.borderWidth = borderWith
        layer.borderColor = borderColor
      }
}
extension UIButton {
    //If you want only round corners
    func ButtonBorderCorner(radius: CGFloat) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    //if you want to give shadow with round corners
    func ButtonShadowWithCornerRaduis(shadowColor:CGColor,shadowOpacity:CGFloat,shadowRadius:CGFloat,shadowOffset:CGSize) {
        layer.masksToBounds = false
        layer.shadowColor = shadowColor
        layer.shadowOpacity = Float(shadowOpacity)
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
    }
}


extension UITextView{
    //If you want only round corners
    func TextViewBorderCorner(radius:CGFloat){
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    //if you want to give shadow with round corners
    func TextViewShadowWithCornerRaduis(shadowColor:CGColor,shadowOpacity:CGFloat,shadowRadius:CGFloat,shadowOffset:CGSize,radius:CGFloat) {
        layer.masksToBounds = true
        layer.shadowColor = shadowColor
        layer.shadowOpacity = Float(shadowOpacity)
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
        layer.masksToBounds = false
        layer.cornerRadius = radius
    }
   // if you want to add border
    func TextViewBorder(borderCornerRadius:CGFloat,borderColor:CGColor,borderWith:CGFloat){
        layer.cornerRadius = borderCornerRadius
        layer.borderWidth = borderWith
        layer.borderColor = borderColor
      }
}


//----Integer extension
extension Int {
    
    static func val(val : Int?)->Int{
        return val ?? 0
    }
    
    func toString()->String {
        return "\(self)"
    }
}


