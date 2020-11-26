//
//  ScreenSize.swift
//  DeviceInfo
//
//  Created by Дмитрий Кулешов on 27.11.2020.
//

import Foundation

public enum ScreenSize: Int, Comparable {
    case unknownSize,
         watch,
         screen3_5in,
         screen4in,
         screen4_7in,
         screen5_4in,
         screen5_5in,
         screen5_8in,
         screen6_1in,
         screen6_5in,
         screen6_7in,
         screen7_9in,
         screen9_7in,
         screen10_2in,
         screen10_5in,
         screen10_9in,
         screen11in,
         screen12in,
         screen12_9in
}

public func <(lhs: ScreenSize, rhs: ScreenSize) -> Bool {
    return lhs.rawValue < rhs.rawValue
}

public func >(lhs: ScreenSize, rhs: ScreenSize) -> Bool {
    return lhs.rawValue > rhs.rawValue
}

public func ==(lhs: ScreenSize, rhs: ScreenSize) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
