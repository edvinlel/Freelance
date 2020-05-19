//
//  Extensions+UIImage.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/14/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

extension UIImage {
    
    /// Enum with every icon used throughout the Freelance application.
    enum Icon: String {
        case largeCalendar
        case smallCalendar
        case projects
        case search
        case largeContact
        case smallContact
        case greenContact
        case largeNotification
        case smallNotification
        case greenAttachment
        case smallAttatchment
        case disabledPhone
        case enabledPhone
        case disabledEmail
        case enabledEmail
        case hamburgerButton
        case finishedTask
        case unfinishedTask
        case backButton
        case ovals
    }
    
    /// Returns an image with specified Icon.
    ///
    /// - Parameters:
    ///     - icon: rawValue name of Icon passed for UIImage.
    /// - Returns: The image of the Icon.
    class func setImage(withIcon icon: Icon) -> UIImage {
        return UIImage(named: icon.rawValue) ?? UIImage()
    }
}

