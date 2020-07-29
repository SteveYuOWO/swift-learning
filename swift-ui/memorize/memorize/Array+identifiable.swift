//
//  Array+identifiable.swift
//  memorize
//
//  Created by Steve Yu on 2020/7/23.
//  Copyright © 2020 CS193p Instructor. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching item: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == item.id {
                return index
            }
        }
        return nil
    }
}
