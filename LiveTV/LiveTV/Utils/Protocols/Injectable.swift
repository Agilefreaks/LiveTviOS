//
//  Injectable.swift
//  incidente
//
//  Created by Mihai Pantiru on 13/02/2017.
//  Copyright © 2017 IndSoft. All rights reserved.
//

import Foundation

protocol Injectable {
    associatedtype T
    func inject(_: T)
    func assertDependencies()
}
