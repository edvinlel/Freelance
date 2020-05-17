//
//  Extensions+UIColor.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/14/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// Helper method to eliminate the need to / 255.0 for the red, green and blue values. Alpha
    /// is set to 1.
    ///
    /// - Parameters:
    ///   - red: CGFloat value for the red hue.
    ///   - green: CGFloat value for the green hue.
    ///   - blue: CGFloat value for the blue hue.
    class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
    }
    
    /// Freelance project color theme
    struct FreelanceColor {
        /// Background color for every screen
        static var background: UIColor { return UIColor.rgb(red: 243, green: 245, blue: 248) }
        
        /// Light blue used for CircularProgressView, Amount of tasks and Notification Switch Control
        static var lightBlue: UIColor { return UIColor.rgb(red: 116, green: 185, blue: 255) }
        
        /// Used for Project Title
        static var titleBlue: UIColor { return UIColor.rgb(red: 1, green: 21, blue: 110) }
        
        /// Header blue used to name sections in ProjectViewController
        static var headerBlue: UIColor { return UIColor.rgb(red: 29, green: 38, blue: 77) }
        
        /// Light gray text used throughout the application
        static var paragraphGray: UIColor { return UIColor.rgb(red: 178, green: 177, blue: 177) }
        
        /// Neon green used in the TaskContainerView
        static var taskGreen: UIColor { return UIColor.rgb(red: 57, green: 173, blue: 177) }
        
        /// Flat red used for Log Out and Due days remaining
        static var flatRed: UIColor { return UIColor.rgb(red: 239, green: 120, blue: 132) }
    }
}
