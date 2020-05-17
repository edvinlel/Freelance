//
//  Task.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/17/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import Foundation

struct Task {
    var title: String
    var dueDate: Date?
    var remindMe: Bool?
    var project: Project
    var description: String?
    var files: [File]?
    var contacts: [Contact]?
}
