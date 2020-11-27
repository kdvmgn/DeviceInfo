//
//  ScreenSize.swift
//  DeviceSpec
//
//  Created by Дмитрий Кулешов on 27.11.2020.
//

import Foundation

public enum ScreenSize: String, Comparable {
    case unknownSize
    case watch          = "watch"
    case screen3_5in    = "3.5\""
    case screen4in      = "4\""
    case screen4_7in    = "4.7\""
    case screen5_4in    = "5.4\""
    case screen5_5in    = "5.5\""
    case screen5_8in    = "5.8\""
    case screen6_1in    = "6.1\""
    case screen6_5in    = "6.5\""
    case screen6_7in    = "6.7\""
    case screen7_9in    = "7.9\""
    case screen9_7in    = "9.7\""
    case screen10_2in   = "10.2\""
    case screen10_5in   = "10.5\""
    case screen10_9in   = "10.9\""
    case screen11in     = "11\""
    case screen12in     = "12\""
    case screen12_9in   = "12.9\""
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
