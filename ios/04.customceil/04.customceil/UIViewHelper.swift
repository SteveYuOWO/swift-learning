//
//  UIViewHelper.swift
//  04.customceil
//
//  Created by Steve Yu on 2020/4/14.
//  Copyright © 2020 Steve Yu. All rights reserved.
//
import UIKit

/*
    拓展UIView的编辑栏
 */
extension UIView {
    /*
        @IBInspectable 是进行增添storybook上的属性的可视化设置
        可以指定一个属性，圆角属性
     */
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    /*
        阴影角度
     */
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    /*
        阴影透明度
     */
    @IBInspectable
    var shadowOpacity: Float {
        get {
            layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    /*
        阴影颜色
     */
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            return layer.shadowColor != nil ? UIColor(cgColor: layer.shadowColor!) : nil;
        }
        set {
            layer.shadowColor = newValue?.cgColor
        }
    }
    
    /*
        阴影偏移
     */
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
}
