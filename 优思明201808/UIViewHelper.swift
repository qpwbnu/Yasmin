//
//  UIViewHelper.swift
//  优思明201808
//
//  Created by 秦培文 on 2018/8/3.
//  Copyright © 2018 秦培文. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
        }
    }
}

