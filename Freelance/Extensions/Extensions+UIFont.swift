//
//  Extensions+UIFont.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/14/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

// TODO: Find a way to use only one function for all 3 uses

extension UIFont {
    
    class func avenirMedium(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "AvenirNext-Medium", size: size)!
    }
    
    class func avenirDemiBold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "AvenirNext-DemiBold", size: size)!
    }
    
    class func avenirBold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "AvenirNext-Bold", size: size)!
    }
    
    
}

