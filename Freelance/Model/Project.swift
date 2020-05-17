//
//  Project.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/17/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import Foundation

struct Project {
    var title: String
    var dueDate: Date?
    var completionPercentage: Float?
    var description: String?
    var files: [File]?
    var contacts: [Contact]?
    var tasks: [Task]?
}
