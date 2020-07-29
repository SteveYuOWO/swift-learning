//
//  Array+Only.swift
//  memorize
//
//  Created by Steve Yu on 2020/7/24.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first: nil
    }
}
