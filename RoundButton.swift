//
//  RoundButton.swift
//
//
//  Created by Vikram on 8/1/17.
//  Copyright © 2017 Vikram. All rights reserved.
//

import UIKit


@IBDesignable public class RoundButton: UIButton {
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = cornerRadius != 0 ? 0.5 * cornerRadius : 0.5 * bounds.size.width
        clipsToBounds = true
    }
}
