//
//  RoundedLabel_with_GreyShadow.swift
//  MoviesPreview
//
//  Created by Mohamed Mohsen on 8/3/18.
//  Copyright © 2018 Mohamed Mohsen. All rights reserved.
//

import UIKit

@IBDesignable class RoundedLabel_with_GreyShadow: UILabel {

    @IBInspectable var borderColor:UIColor = DefaultValues.borderColor {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius:CGFloat = DefaultValues.cornerRadius {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth:CGFloat = DefaultValues.borderWidth {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
//    @IBInspectable var ShadowColor:UIColor = DefaultValues.shadowColor {
//        didSet {
//            layer.shadowColor = ShadowColor.cgColor
//        }
//    }
    
    @IBInspectable var ShadowRadius:CGFloat = DefaultValues.shadowRadius {
        didSet {
            layer.shadowRadius = ShadowRadius
        }
    }
    
    @IBInspectable var ShadowOpacity:Float = DefaultValues.shadowOpacity {
        didSet {
            layer.shadowOpacity = ShadowOpacity
        }
    }
    
//    @IBInspectable var ShadowOffset:CGSize = DefaultValues.shadowOffset {
//        didSet {
//            layer.shadowOffset = ShadowOffset
//        }
//    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    private func configure () {
        layer.cornerRadius = cornerRadius
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        clipsToBounds = true
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //-------------------Constants--------------
    private struct DefaultValues {
        static let cornerRadius:  CGFloat = 8.0
        static let borderWidth:   CGFloat = 4.0
        static let borderColor:   UIColor = UIColor.white
        //static let shadowColor:   UIColor = UIColor.blue
        static let shadowRadius:  CGFloat = 0.0
        static let shadowOpacity: Float   = 1.0
        //static let shadowOffset:  CGSize  = CGSize(width: 0, height: 0)
    }
    

}


